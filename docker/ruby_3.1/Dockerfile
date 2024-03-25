FROM timbru31/ruby-node:3.1-slim-gallium

RUN apt-get update -qq \
  && apt-get install --no-install-recommends -y git \
  && apt-get install --no-install-recommends -y make \
  && apt-get install --no-install-recommends -y gcc \
  && apt-get install --no-install-recommends -y build-essential \
  && apt-get install --no-install-recommends -y default-libmysqlclient-dev \
  && apt-get install --no-install-recommends -y default-mysql-client \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /project

WORKDIR /project

COPY . /project

ENV RUBY_ENGINE=ruby

ENV BUNDLE_GEMFILE=Gemfile.${RUBY_ENGINE}_${RUBY_VERSION}

RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /bin

RUN task deps:install:all

ENV IN_DOCKER_CONTAINER=true
