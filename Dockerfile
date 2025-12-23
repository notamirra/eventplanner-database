FROM postgres:14

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=12345
ENV POSTGRES_DB=eventplanner

# OpenShift-compatible permissions (NO chown!)
RUN mkdir -p /var/lib/postgresql/data \
 && chmod -R g+rwX /var/lib/postgresql

# Run as non-root (OpenShift requirement)
USER 1001
