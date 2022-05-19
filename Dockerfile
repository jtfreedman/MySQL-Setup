FROM mysql:8

copy setup.sql /docker-entrypoint-initdb.d/