

# go-release-buildprint
An example project to demonstrate how to build/release and publish a Go project.

### Reproduction Setups
1. Run the make command to rebuild from scratch
```bash
make repeat
```

# Triggering a release
1. Create a new tag
```bash
git tag -a v0.0.1 -m "First release"
```

# Example installation from .deb release
1. Download the .deb file from the release page
```bash
curl -O https://github.com/Shalankwa/go-release-blueprint/releases/download/v0.0.1/go-release-buildprint_0.0.1_linux_amd64.deb
```
2. Install the .deb file
```bash
sudo dpkg -i go-release-buildprint_0.0.1_linux_amd64.deb
```
3. Run the installed command
```bash
go-release-buildprint
```

# Resources
Based off: https://www.youtube.com/watch?v=IOVBSVox1lM