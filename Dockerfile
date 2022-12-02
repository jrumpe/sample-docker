### BASE IMAGE ###
FROM  ubuntu:latest



RUN apt-get update
RUN apt-get install -y make curl && \
    rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /root
COPY start.sh /root/start.sh
ENTRYPOINT /root/start.sh

CMD ["./start.sh"]g