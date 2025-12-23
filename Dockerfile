FROM postgres:14

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=12345
ENV POSTGRES_DB=eventplanner

# OpenShift permission fix
RUN chown -R 1001:0 /var/lib/postgresql \
 && chmod -R g+rwX /var/lib/postgresql

USER 1001
