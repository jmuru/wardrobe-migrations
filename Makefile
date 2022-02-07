create-db:
	psql -h ${DB_HOST} -d ${DB_NAME} -f 0001_initial_schema.up.sql