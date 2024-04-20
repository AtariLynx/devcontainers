# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.154.0/containers/alpine/.devcontainer/base.Dockerfile

# [Choice] Alpine version: 3.16, ..., 3.19
ARG VARIANT="3.19"

FROM mcr.microsoft.com/vscode/devcontainers/base:alpine-${VARIANT} as build
ARG CC65_VERSION="latest"

#RUN apk update && \
#    apk add --no-cache --virtual .build-deps git build-base
    
RUN echo 'Using CC65 Version: "${CC65_VERSION}"' 

WORKDIR /usr/src
RUN git clone https://github.com/cc65/cc65.git && cd cc65 && \
    if [ "${CC65_VERSION}" != "latest" ]; then \
    git checkout tags/V${CC65_VERSION} -b "tag-${CC65_VERSION}"; \
    fi && \
    nice make -j2 && \
    make install PREFIX=/usr prefix=/usr && \
    rm -rf /usr/src/cc65
#RUN rm -rf /usr/src/cc65/wrk && rm -rf /usr/src/cc65/libwrk && rm -rf /usr/src/cc65/.git 

# FROM alpine:3.19 AS final
# RUN apk update && \
#     apk add --no-cache --virtual .build-deps git build-base
# WORKDIR /usr/src/cc65
# COPY --from=build /usr/src/cc65 .
CMD ash
#WORKDIR /usr/src/cc65