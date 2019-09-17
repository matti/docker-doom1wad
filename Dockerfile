FROM busybox as builder

WORKDIR /tmp
RUN wget http://www.pc-freak.net/files/doom-wad-files/Doom1.WAD

FROM scratch
COPY --from=builder /tmp/Doom1.WAD /doom1.wad
