FROM python:3.8

WORKDIR /usr/src/git-sim

RUN apt update

RUN apt -y install build-essential python3-dev libcairo2-dev libpango1.0-dev ffmpeg

RUN pip3 install manim

RUN pip3 install git-sim

RUN git config --global user.email "johndoe@local"

RUN git config --global user.name "John Doe"

RUN git init workshop

WORKDIR /usr/src/git-sim/workshop

RUN echo "# Git Workshop" > README.md

RUN git add .

RUN git commit -m "initial commit"

RUN git branch -m main

ENTRYPOINT [ "/bin/bash" ]
