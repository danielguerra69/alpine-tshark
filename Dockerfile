FROM alpine:edge
MAINTAINER Daniel Guerra
RUN apk --update --no-cache add tshark
COPY bin /bin
CMD ["sh"]
