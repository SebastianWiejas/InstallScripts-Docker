FROM ubuntu:latest
RUN apt-get update && apt-get install -y brasero xauth
RUN touch ~/.Xauthority
RUN xauth add Yourbeautifulhostname/unix:0 MIT-MAGIC-COOKIE-1 Yourbeautifullcookiegoeshere
CMD ["/usr/bin/brasero"]
