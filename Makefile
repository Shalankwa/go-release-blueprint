PROJECT_NAME=go-release-buildprint

release-snapshot:
	goreleaser release --snapshot --clean

release-clean:
	rm -rf dist/

repeat:
	go mod init $(PROJECT_NAME)
	go install github.com/spf13/cobra-cli@latest
	cobra-cli init
	go install github.com/goreleaser/goreleaser/v2@latest
	goreleaser init
	goreleaser release --snapshot --clean
