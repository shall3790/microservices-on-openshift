FROM 172.30.1.1:5000/myproject/elixir:1.5.0-rhel7 as builder

# RUN mix local.hex --force && \
#     mix local.rebar --force && \
#     mix hex.info && \
RUN mix hex.config unsafe_https true

WORKDIR /app

ENV MIX_ENV prod
ADD . .

RUN ls -la

RUN mix deps.get
RUN mix release --env=$MIX_ENV

FROM registry.access.redhat.com/rhel7/rhel-atomic:7.4-88

# RUN apt-get -qq install openssl libssl1.0.0 libssl-dev
WORKDIR /app
COPY --from=builder /app/_build/prod/rel/docker_multistage .

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV PORT 4001

CMD ["./bin/docker_multistage", "foreground"]


