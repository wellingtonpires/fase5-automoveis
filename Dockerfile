FROM  golang:1.21
ADD . /app
ADD ./infrastructure/persistence/db.sql /docker-entrypoint-initdb.d
WORKDIR /app
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -o /fase5automoveis
EXPOSE 8080
CMD ["/fase5automoveis"]