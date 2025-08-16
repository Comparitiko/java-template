FROM postgres:17.5 AS postgres

# Environment variables that must be set at runtime
ENV POSTGRES_DB
ENV POSTGRES_USER
ENV POSTGRES_PASSWORD

# Install PostgreSQL extensions
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-contrib \
        postgresql-17-pgvector \
    && rm -rf /var/lib/apt/lists/*

# Expose the PostgreSQL port
EXPOSE 5432
