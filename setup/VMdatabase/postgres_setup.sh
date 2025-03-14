#!/bin/bash

sudo systemctl enable postgresql
sudo systemctl start postgresql

# Devo fazer aqui o setup inteiro da cardb?

sudo cp postgresql.conf /etc/postgresql/16/main/postgresql.conf
sudo cp pg_hba.conf /etc/postgresql/16/main/pg_hba.conf

sudo cp ../../config/ca.crt /etc/ssl/certs/
sudo cp ../../config/db.crt /etc/ssl/certs/
sudo cp ../../config/db.key /etc/ssl/private/
sudo chown postgres:postgres /etc/ssl/private/db.key
sudo chmod 600 /etc/ssl/private/db.key

sudo systemctl restart postgresql

