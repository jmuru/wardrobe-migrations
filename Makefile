create-db:
	psql -h ${DB_HOST} -p ${DB_PORT} -d ${DB_NAME} -U ${POSTGRES_USER} -W  -f 0001_initial_schema.up.sql