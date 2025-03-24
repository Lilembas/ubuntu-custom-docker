FROM ubuntu:latest
RUN apt update && apt install -y curl vim openssh-server
CMD ["bash"]