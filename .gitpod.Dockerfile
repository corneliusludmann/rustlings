FROM rust

#ENV export PATH="/usr/local/cargo/bin:$PATH"

RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod
USER gitpod

RUN echo 'export PATH="/usr/local/cargo/bin:$PATH"' >> /home/gitpod/.bashrc
