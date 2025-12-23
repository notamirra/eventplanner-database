FROM postgres:16

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=12345
ENV POSTGRES_DB=eventplanner

# Auto-run all SQL migration files
COPY migrations/*.sql /docker-entrypoint-initdb.d/

EXPOSE 5432
# Fix permissions for OpenShift
RUN mkdir -p /var/lib/postgresql/data \
    && chown -R 1001:0 /var/lib/postgresql \
    && chmod -R g+rwX /var/lib/postgresql

USER 1001