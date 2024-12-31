generate:
	make generate-auth-api
	make generate-mail-api
	make generate-user-api

generate-auth-api:
	protoc --proto_path=api --proto_path=api \
		--go_out=./pkg/ --go_opt=paths=source_relative \
		--go-grpc_out=./pkg/ --go-grpc_opt=paths=source_relative \
		./api/auth_v1/auth.proto

generate-mail-api:
	 protoc --proto_path=api --proto_path=api \
 		--go_out=./pkg/ --go_opt=paths=source_relative \
 		--go-grpc_out=./pkg/ --go-grpc_opt=paths=source_relative\
 	 	./api/mail_v1/mail.proto

generate-user-api:
	protoc --proto_path=api --proto_path=api \
		--go_out=./pkg/ --go_opt=paths=source_relative \
		--go-grpc_out=./pkg/ --go-grpc_opt=paths=source_relative \
		./api/users_v1/users.proto