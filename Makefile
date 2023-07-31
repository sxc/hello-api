build:
	@go build -o api cmd/main.go

run: build
	@./api

# test:
# 	@go test -v ./...

# test:
# 	go test ./... -coverprofile=coverage.out

# coverage:
# 	go tool cover -func coverage.out | grep "total:" | \
# 	awk '{print ((int($$$3) > 80) != 1) }'

test:
    go test ./... -coverprofile=coverage.out
 
coverage:
    go tool cover -func coverage.out | grep "total:" | awk '{print ((int($$3) > 80) != 1) }'  

report:
	go tool cover -html=coverage.out -o cover.xhtml