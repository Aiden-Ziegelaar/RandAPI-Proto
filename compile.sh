cd src
protoc --go_out=../go/src/dto --go_opt=paths=source_relative --go-grpc_out=../go/src/service --go-grpc_opt=paths=source_relative boolean.proto integer.proto service.proto
