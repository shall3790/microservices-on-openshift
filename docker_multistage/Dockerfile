FROM hlrepomgmt01:8087/hobbylobby/elixir:1.5.0-rhel7 as builder

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

FROM hlsatellite01.hobbylobby.corp:5000/hl_rhel-docker-rhel7atomic:7.4-88

# RUN apt-get -qq install openssl libssl1.0.0 libssl-dev
WORKDIR /app
COPY --from=builder /app/_build/prod/rel/docker_multistage .

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV PORT 4001

CMD ["./bin/docker_multistage", "foreground"]


