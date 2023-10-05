FROM timbru31/ruby-node:2.7-slim-gallium

RUN apt-get update -qq \
  && apt-get install --no-install-recommends -y git \
  && apt-get install --no-install-recommends -y make \
  && apt-get install --no-install-recommends -y gcc \
  && apt-get install --no-install-recommends -y build-essential \
  && apt-get install --no-install-recommends -y default-libmysqlclient-dev \
  && apt-get install --no-install-recommends -y default-mysql-client \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app

WORKDIR /app

COPY ./app /app

ENV BUNDLE_GEMFILE=Gemfile.2.7

RUN cd rails_5.2/app && bundle install

RUN cd rails_6.0/app && bundle install

RUN cd rails_6.1/app && bundle install

RUN cd rails_7.0/app && bundle install

RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /bin

ENV IN_DOCKER_CONTAINER=true
