FROM mcr.microsoft.com/devcontainers/rust:bullseye

ARG TYPST_VERSION=v0.11.0
ARG NOTEBOOKiNATOR_VERSION=1.0.1

# Install Typst
RUN wget https://github.com/typst/typst/releases/download/${TYPST_VERSION}/typst-x86_64-unknown-linux-musl.tar.xz && \
    tar -xvf typst-x86_64-unknown-linux-musl.tar.xz && \
    mv typst-x86_64-unknown-linux-musl/typst /usr/local/bin/typst && \
    rm -rf ./typst-x86_64-unknown-linux-musl*

# Install typst-live
RUN cargo install typst-live
ENV PATH="/root/.cargo/bin:${PATH}"

# We need to change the user here because typst local packages are installed per user
USER vscode
WORKDIR /home/vscode/

# Install fonts
RUN wget https://github.com/google/fonts/raw/main/ofl/blinker/Blinker-Regular.ttf && \
    wget https://github.com/googlefonts/RobotoMono/blob/main/fonts/ttf/RobotoMono-Bold.ttf && \
    wget https://github.com/googlefonts/RobotoMono/blob/main/fonts/ttf/RobotoMono-BoldItalic.ttf && \
    wget https://github.com/googlefonts/RobotoMono/blob/main/fonts/ttf/RobotoMono-Italic.ttf && \
    wget https://github.com/googlefonts/RobotoMono/blob/main/fonts/ttf/RobotoMono-Light.ttf && \
    wget https://github.com/googlefonts/RobotoMono/blob/main/fonts/ttf/RobotoMono-LightItalic.ttf && \
    wget https://github.com/googlefonts/RobotoMono/blob/main/fonts/ttf/RobotoMono-Medium.ttf && \
    wget https://github.com/googlefonts/RobotoMono/blob/main/fonts/ttf/RobotoMono-MediumItalic.ttf && \
    wget https://github.com/googlefonts/RobotoMono/blob/main/fonts/ttf/RobotoMono-Regular.ttf && \
    wget https://github.com/googlefonts/RobotoMono/blob/main/fonts/ttf/RobotoMono-Thin.ttf && \
    wget https://github.com/googlefonts/RobotoMono/blob/main/fonts/ttf/RobotoMono-ThinItalic.ttf && \
    wget https://github.com/google/fonts/raw/main/ofl/firasans/FiraSans-Regular.ttf && \
    wget https://github.com/Papillard/Avenir/blob/master/AvenirBold.ttf && \
    mkdir -p /home/vscode/.local/share/fonts/ && \
    mv ./*.ttf /home/vscode/.local/share/fonts

# Install the notebookinator
RUN git clone --depth 1 --branch 29457A-changes https://github.com/KillerDew/notebookinator.git && \
    ./notebookinator/scripts/package @local && \
   rm -rf notebookinator
