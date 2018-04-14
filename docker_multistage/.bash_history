ls
exit
mix deps.get
mix release.init
iex -S mix phx.srv
iex -S mix phx.server
PORT=4001 iex -S mix phx.server
PORT=4001 iex -S mix phx.server
PORT=4001 iex -S mix phx.server
MIX_ENV=prod mix release --env=prod
MIX_ENV=prod PORT=4001 _build/prod/rel/docker_multistage/bin/docker_multistage foreground
exit
ls
mix deps.get
mix hex.config unsafe_https true
mix deps.get
PORTiex -S mix phx.server
exit
PORT=4001 iex -S mix phx.server
PORT=4001 iex -S mix phx.server
PORT=4001 iex -S mix phx.server
PORT=4001 iex -S mix phx.server
PORT=4001 iex -S mix phx.server
PORT=4001 iex -S mix phx.server
exit
