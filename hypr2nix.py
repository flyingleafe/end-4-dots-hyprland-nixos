import sys
import re
from collections import OrderedDict

def parse_hyprland_config(lines):
    config = OrderedDict()
    for line in lines:
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        # Remove inline comments (after #)
        line = re.split(r'\s+#', line, 1)[0].strip()
        if '=' not in line:
            continue
        key, value = line.split('=', 1)
        key = key.strip()
        value = value.strip()
        # Remove trailing commas (common in Hyprland configs)
        if value.endswith(','):
            value = value[:-1].strip()
        # Store in dict as list
        if key not in config:
            config[key] = []
        config[key].append(value)
    return config

def escape_double_quotes(s):
    return s.replace('"', '\\"')

def to_nix(config):
    nix_lines = ["{"]
    for key, values in config.items():
        if len(values) == 1:
            escaped_value = escape_double_quotes(values[0])
            nix_lines.append(f'  {key} = "{escaped_value}";')
        else:
            nix_lines.append(f'  {key} = [')
            for v in values:
                escaped_v = escape_double_quotes(v)
                nix_lines.append(f'    "{escaped_v}"')
            nix_lines.append('  ];')
    nix_lines.append("}")
    return "\n".join(nix_lines)

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python hypr2nix.py <hyprland.conf>")
        sys.exit(1)
    with open(sys.argv[1], "r") as f:
        lines = f.readlines()
    config = parse_hyprland_config(lines)
    print(to_nix(config))