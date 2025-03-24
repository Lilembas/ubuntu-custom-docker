FROM ubuntu:latest
RUN apt update && && apt upgrade -y
RUN apt install -y curl
CMD ["/bin/bash"]
ENTRYPOINT ["/bin/bash -c"]