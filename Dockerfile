FROM golang:1.11-alpine AS build
MAINTAINER asdfasdf
LABEL "purpose"="GOOOOO"
WORKDIR /src/
COPY main.go go.* /src/
RUN CGO_ENABLED=0 go build -i /bin/demo

FROM scratch
COPY --from=build /bin/demo /bin/demo
ENTRYPOINT ["/bin/demo"]
