FROM golang:1.10.1

ENV VERSION 9a2f9524024889e129a5422aca2cff73cb3eabf6

ENV project_dir /go/src/github.com/btcsuite/btcd
WORKDIR ${project_dir}

COPY . ${project_dir}

RUN go install . ./cmd/...

