FROM nvidia/cuda:12.4.1-runtime-ubuntu22.04
RUN apt update && apt upgrade -y
RUN apt install -y curl
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/bash","-c","/entrypoint.sh"]