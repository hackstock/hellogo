FROM golang:latest
ENV SRC_DIR=/hellogo
ADD . ${SRC_DIR}
WORKDIR ${SRC_DIR}
RUN go build -race .
ENTRYPOINT [ "./hellogo" ]