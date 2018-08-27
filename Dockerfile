FROM ubuntu:18.04

ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8

RUN apt-get update
RUN apt install -y software-properties-common
RUN apt-add-repository ppa:neovim-ppa/stable
RUN apt install -y \
    curl \
    git \
    neovim \
    python \
    python-dev \
    python3 \
    python3-dev \
    python3-pip \
    && echo 1
    
RUN apt-get clean -y

RUN pip3 install --upgrade pip
RUN pip3 install neovim jedi black flake8

RUN curl -fLo ~/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/kriwil/dotfiles/master/vimrc
RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN nvim +'PlugInstall --sync' +qa

RUN mkdir /root/Workspace

WORKDIR /root/Workspace
CMD ["nvim"]

