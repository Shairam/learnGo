FROM  golang:latest

LABEL maintainer = "Shairam"

WORKDIR /app


COPY . .

RUN go build hello.go

# Expose port 8080 to the outside world
EXPOSE 10000

# Command to run the executable
CMD ["./hello"]