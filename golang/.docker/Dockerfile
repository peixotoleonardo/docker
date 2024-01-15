FROM golang:1.22-rc-alpine3.18 AS build

WORKDIR /app
COPY . .

RUN go build -o .build/main cmd/main.go

FROM scratch

WORKDIR /app
COPY --from=build /app/.build/main .

ENTRYPOINT [ "./main" ]
