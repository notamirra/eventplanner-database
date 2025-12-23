FROM postgres:16

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=12345
ENV POSTGRES_DB=eventplanner

# Auto-run all SQL migration files
COPY migrations/*.sql /docker-entrypoint-initdb.d/

EXPOSE 5432
