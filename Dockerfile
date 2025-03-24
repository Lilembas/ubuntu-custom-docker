FROM nvidia/cuda:12.4.1-runtime-ubuntu22.04
RUN apt update && apt upgrade -y
RUN apt install -y wget git python3 python3-venv libgl1 libglib2.0-0 apt-transport-https libgoogle-perftools-dev bc python3-pip
RUN apt install -y curl net-tools openssh-server vim iputils-ping resolvconf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/bash","-c","/entrypoint.sh"]
