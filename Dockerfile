FROM postgres:latest

CMD ["postgres","-c","fsync=off","-c","synchronous_commit=off","-c","full_page_writes=off"]