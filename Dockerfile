FROM mongo:4.2.8-bionic
WORKDIR /app
COPY ./entry.sh .
EXPOSE 27017
ENTRYPOINT [ "./entry.sh" ]
