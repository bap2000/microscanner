ARG image
FROM ${image}

COPY debian.entrypoint.sh /

ADD https://get.aquasec.com/microscanner /

RUN chmod +x /microscanner /entrypoint.sh && \
  apt install --no-install-recommends -y ca-certificates && \
  update-ca-certificates

ENTRYPOINT ["/debian.entrypoint.sh"]

CMD ["--html"]
