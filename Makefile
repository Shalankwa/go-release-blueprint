PROJECT_NAME=go-release-buildprint

release-snapshot:
	goreleaser release --snapshot --clean

release-clean:
	rm -rf dist/

repeat:
	go mod init $(PROJECT_NAME)
	go get github.com/spf13/cobra
	go install github.com/goreleaser/goreleaser/v2@latest
	goreleaser init
	goreleaser release --snapshot
