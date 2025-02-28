

# go-release-buildprint
An example project to demonstrate how to build/release and publish a Go project.

# Reproduction Setups
1. go mod init (project name)
2. go get github.com/spf13/cobra
3. go install github.com/goreleaser/goreleaser/v2@latest
4. goreleaser init
5. goreleaser release --snapshot --clean

# Resources
Based off: https://www.youtube.com/watch?v=IOVBSVox1lM
