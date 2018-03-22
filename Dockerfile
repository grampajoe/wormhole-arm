FROM centurylink/ca-certs

COPY wormhole /wormhole

ENTRYPOINT ["/wormhole"]
