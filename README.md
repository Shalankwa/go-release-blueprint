
# go-release-blueprint
An example project to demonstrate how to build/release and publish Go projects.

### Dependencies
- Golang
- This project uses [goreleaser](https://goreleaser.com/) to build and release packages.
- Github actions are used to automate the build and release process during tag creation.
- [Cobra](https://github.com/spf13/cobra) is used to create to kitstart a simple CLI application.

### Reproduction Setups
A makefile is present to provide an example of how to recreate this project from scratch.
1. Run the make command to rebuild from scratch
```bash
make repeat
```

2. Copy the workflow example in [goreleaser docs](https://goreleaser.com/ci/actions/) to /.github/workflows/release.yml

## Triggering a release
The github actions workflow is set to trigger on a new tag creation.
1. Create a new tag
```bash
git tag -a v0.0.1 -m "First release"
git push --tags
```

## Installation of packages
### Example Install using go
```bash
go install github.com/shalankwa/go-release-blueprint@latest
```

### Example installation from .deb release
1. Download the .deb file from the release page
```bash
curl -O https://github.com/shalankwa/go-release-blueprint/releases/download/v0.0.1/go-release-blueprint_0.0.1_linux_amd64.deb
```
2. Install the .deb file
```bash
sudo dpkg -i go-release-blueprint_0.0.1_linux_amd64.deb
```
3. Run the installed command
```bash
go-release-blueprint
```

# Resources
- Based off: https://www.youtube.com/watch?v=IOVBSVox1lM
- Learn more about goreleaser: https://goreleaser.com/
- Learn more about cobra: https://github.com/spf13/cobra
- Learn more about github actions: https://docs.github.com/en/actions