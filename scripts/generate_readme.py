import json

with open("data/learning.json") as f:
    system = json.load(f)

readme = f"""# AK Kavan Developer OS

## System Status

- macOS Version: {system["os_version"]}
- Kernel: {system["kernel"]}
- Homebrew Packages: {system["brew_packages"]}

## Learning

- Arch Linux
- Qt6
- OS Development
- DSA

Last Updated Automatically
"""

with open("README.md", "w") as f:
    f.write(readme)

print("README updated")
