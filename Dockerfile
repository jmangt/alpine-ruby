FROM alpine:edge

LABEL UPDATED_AT 2015-12-23

RUN apk update && apk upgrade && apk --update add \
    ruby ruby-irb ruby-rake ruby-io-console ruby-bigdecimal \
    libstdc++ tzdata

RUN gem install bundler --no-ri --no-rdoc \
    && rm -r /root/.gem \
    && find / -name '*.gem' | xargs rm

CMD ["irb"]
