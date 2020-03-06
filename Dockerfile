FROM node:lts

ARG project_dir=/projects/
WORKDIR $project_dir

COPY package*.json ./
RUN npm install

ENV USER hubotuser

RUN useradd -m ${USER}
RUN echo "${USER}:password" | chpasswd

USER ${USER}
