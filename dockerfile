FROM golang:latest
RUN go get github.com/7thFox/hypothesisbot
RUN go get github.com/bwmarrin/discordgo
RUN go get gopkg.in/mgo.v2
RUN go install github.com/7thFox/hypothesisbot

RUN addgroup \
    --system --gid 1000 \
    hypothesisbot && \
  adduser \
    --system \
    --home /data \
    --shell /bin/sh \
    --uid 1000 \
    --gid 1000 \
    hypothesisbot

VOLUME ["/data"]

USER hypothesisbot
ENTRYPOINT [ "/go/bin/hypothesisbot", "--config", "/data/config.json" ]
CMD []