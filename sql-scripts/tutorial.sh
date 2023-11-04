#!/bin/bash

psql -U postgres -c 'CREATE DATABASE sample;'
psql -U postgres -d sample -f /assets/sample.sql

psql -U postgres -c 'CREATE DATABASE dvdrental;'
pg_restore -U postgres -d dvdrental /assets/dvdrental.tar
