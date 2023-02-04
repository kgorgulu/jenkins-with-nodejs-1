FROM --platform=linux/amd64 maven:3.6-jdk-8-slim
#jenkins/jenkins:alpine-jdk17

USER root

RUN apk -v --no-cache --update add \
    nodejs-current npm

RUN apk add --update docker openrc
RUN rc-update add docker boot
