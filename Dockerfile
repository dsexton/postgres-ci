FROM postgres:latest

CMD ["postgres","-c","fsync=off"]