FROM python:3.9-slim

ENV DEBIAN_FRONTEND="noninteractive" \
    LC_ALL="C.UTF-8" \
    LANG="C.UTF-8" \
    PYTHONPATH="/code/" 

# `graphviz` is needed to create figure.
# `fonts-wqy-zenhei` is needed to visualize Japanese inside of figure.
RUN apt update \
    && apt install --no-install-recommends -y \
    fonts-wqy-zenhei \
    graphviz \
    make

# `furo` is theme of sphinx
RUN pip3 install \
    black \
    flake8 \
    furo \
    isort \
    livereload \
    mypy \
    sphinx

RUN useradd -ms /bin/sh xccv
USER xccv

WORKDIR /code/docs
ENTRYPOINT make html && python3 livehtml.py