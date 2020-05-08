FROM node
MAINTAINER Pablo alana
ARG CONT_IMG_VER
ARG USER_ID=431
ARG GROUP_ID=433

LABEL version ${CONT_IMG_VER}
LABEL description Example expressjs site.

ENV CONT_IMG_VER ${CONT_IMG_VER}
ENV PORT 8000
ENV NODE_ENV production

RUN mkdir app

COPY . /app

WORKDIR /app
RUN npm install

EXPOSE 8000


CMD ["node","server.js"]