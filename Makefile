PROJECT_NAME=go-release-blueprint

release-clean:
	rm -rf dist/

full-clean:
	$(MAKE) release-clean
	rm -rf go.sum
	rm -rf go.mod
	rm main.go
	rm -rf cmd/

install:
	go install github.com/goreleaser/goreleaser/v2@latest
	go install github.com/spf13/cobra-cli@latest

init:
	go mod init $(PROJECT_NAME)
	cobra-cli init
	goreleaser init

release-snapshot:
	goreleaser release --snapshot --clean

repeat:
	$(MAKE) full-clean
	$(MAKE) install
	$(MAKE) init
	$(MAKE) release-snapshot
