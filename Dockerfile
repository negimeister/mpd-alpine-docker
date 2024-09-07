# Use Alpine Linux 3.18.4 as the base image
FROM alpine:3.20.3

# Install MPD (Music Player Daemon)
RUN apk add --no-cache mpd mpc

# Expose the default port for MPD
EXPOSE 6600

# Run MPD in the foreground
CMD ["mpd", "--no-daemon", "--stdout", "--verbose"]
