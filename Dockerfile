FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    gcc g++ cmake ninja-build \
    && rm -rf /var/lib/apt/lists/*

RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)" -- \
    -p git -p ssh-agent -p 'history-substring-search' \
    -a 'bindkey "\$terminfo[kcuu1]" history-substring-search-up' \
    -a 'bindkey "\$terminfo[kcud1]" history-substring-search-down'


RUN apt-get update && apt-get install -y \
    qt6-base-dev qt6-base-dev-tools

RUN apt-get install -y gedit

WORKDIR /app

# CMD [ "/bin/zsh" ]
# CMD [ "-l" ]


# ENTRYPOINT [ "/opt/lavva_entrypoint.sh" ]
# CMD [ "/bin/zsh" ]
# CMD [ "-l" ]