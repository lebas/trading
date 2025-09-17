.PHONY: test build clean install

test:
	go test -race -coverprofile=coverage.out ./...

build:
	go build -o bin/trading ./cmd/trdading

clean:
	rm -rf bin/

install:
	go install ./cmd/trading

lint:
	golangci-lint run

deps:
	go mod tidy
	go mod verify
