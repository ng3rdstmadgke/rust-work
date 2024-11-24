# https://mcr.microsoft.com/en-us/artifact/mar/devcontainers/rust/tags
FROM mcr.microsoft.com/devcontainers/rust:bookworm

RUN apt-get update && \
    apt-get install -y \
    bash-completion \
    iputils-ping \
    net-tools \
    procps \
    make \
    gcc \
    jq \
    fzf \
    vim \
    git \
    curl \
    wget \
    less \
    groff \
    dnsutils \
    locales \
    sudo \
    default-mysql-client \
    sqlite3 \
    tmux

# ロケール設定
RUN echo 'ja_JP.UTF-8 UTF-8' >> /etc/locale.gen && \
    locale-gen && \
    update-locale LANG=ja_JP.UTF-8
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# aws cli インストール
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install