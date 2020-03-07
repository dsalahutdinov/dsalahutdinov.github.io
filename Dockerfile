FROM ruby:2.7


RUN apt-get update -qq \
    && apt-get install -yq --no-install-recommends \
    build-essential \
    less \
    vim

ENV LANG=C.UTF-8 \
  GEM_HOME=/bundle \
  BUNDLE_JOBS=4 \
  BUNDLE_RETRY=3
ENV BUNDLE_PATH $GEM_HOME
ENV BUNDLE_APP_CONFIG=$BUNDLE_PATH \
  BUNDLE_BIN=$BUNDLE_PATH/bin
ENV PATH $BUNDLE_BIN:$PATH

RUN mkdir -p /app

WORKDIR /app
