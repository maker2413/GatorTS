startdb:
	@docker run --rm --name postgres-db -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres:latest

stopdb:
	@docker stop postgres-db

initdb:
	@docker exec postgres-db psql -U postgres -c "CREATE DATABASE gator;"
