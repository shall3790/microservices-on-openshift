# DockerMultistage

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Spin up container
`docker run -it --rm -v c:/_Git/Elixir/docker_multistage:/opt/app -p 4001:4001 hlrepomgmt01:8087/hobbylobby/elixir:1.5.0-rhel7`

## Running from command line
`PORT=4001 iex -S mix phx.server`

## Build PROD
`mix release.init` (once)
`MIX_ENV=prod mix release --env=prod`

## RUnning prod from $>
`MIX_ENV=prod PORT=4001 _build/prod/rel/docker_multistage/bin/docker_multistage foreground`

## Build container
`docker build -t my_elixir_app:v1 .`

## Run container
`docker run -it (or -d) -p <hash> `


Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
