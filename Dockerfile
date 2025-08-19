FROM postgres:17.5 AS postgres

# Install PostgreSQL extensions
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-contrib \
        postgresql-17-pgvector \
    && rm -rf /var/lib/apt/lists/*

# Expose the PostgreSQL port
EXPOSE 5432
