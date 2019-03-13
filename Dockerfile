FROM insight.caicloudprivatetest.com/release/golang:1.10.1-alpine3.7
COPY app.go .
RUN CGO_ENABLED=0 GOOS=linux go build -i -v -o app .

FROM alpine:3.7 
WORKDIR /root/
COPY --from=0 /go/app .
CMD ["./app"]
