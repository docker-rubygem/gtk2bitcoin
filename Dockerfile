FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.5.1

RUN gem install gtk2bitcoin --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["gtk2bitcoin"]
CMD ["--help"]
