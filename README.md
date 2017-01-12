# Postgres CI Image

## Backround

This image has fsync disabled in order to improve preforming during various continuous integration tasks.

## Flavors

This image comes in the following flavors:

- `latest` (see [postgres:latest](https://hub.docker.com/_/postgres/))
- `9.6` (see [postgres:9.6](https://hub.docker.com/_/postgres/))

## Rake Tasks

There are several rake tasks for building and pushing images.

To see a full list of tasks run:

- `$ rake -T`
