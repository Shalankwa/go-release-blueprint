
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
### Install with homebrew
```bash
brew install shalankwa/homebrew-shalankwa/go-release-blueprint
```

### Example Install using go
```bash
go install github.com/shalankwa/go-release-blueprint@latest
```

### Example installation from .deb release
1. Download the .deb file from the release page
```bash
curl -sfLO https://github.com/shalankwa/go-release-blueprint/releases/download/v0.0.1/go-release-blueprint_0.0.1_linux_amd64.deb
```
2. Install the .deb file
```bash
sudo dpkg -i go-release-blueprint_0.0.1_linux_amd64.deb
```
3. Run the installed command
```bash
go-release-blueprint
```

### Windows install [VIA Admin Powershell]

1. Download the .exe file from the release page
```powershell
cd ~\Downloads\
Invoke-Webrequest -Uri "https://github.com/shalankwa/go-release-blueprint/releases/download/v0.0.3/go-release-blueprint_0.0.3_windows_amd64.zip" -OutFile "go-release-blueprint_0.0.3_windows_amd64.zip"
```

2. Unzip the file
```powershell
Expand-Archive -Path .\go-release-blueprint_0.0.3_windows_amd64.zip -DestinationPath 'C:\Program Files\go-release-blueprint'
```

3. Run the command
```powershell
cd 'C:\Program Files\go-release-blueprint\'
.\go-release-blueprint --help
```

4. [Optional] Add installation path to windows $enc:PATH
```powershell
$env:BACKUPPATH = [Environment]::GetEnvironmentVariable("Path", "Machine")
$env:NEWPATH = [Environment]::GetEnvironmentVariable("Path", "Machine")
$env:NEWPATH += ";C:\Program Files\go-release-blueprint"
[Environment]::SetEnvironmentVariable("Path", $env:NEWPATH, "Machine")
Update-SessionEnvironment
```

# Resources
- Based off: https://www.youtube.com/watch?v=IOVBSVox1lM
- Learn more about goreleaser: https://goreleaser.com/
- Learn more about cobra: https://github.com/spf13/cobra
- Learn more about github actions: https://docs.github.com/en/actions