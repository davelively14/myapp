# Myapp

- Go to `/assets` and run npm install
- From the root, run:
```
mix phx.digest
```
- From the root, run:
```
$ MIX_ENV=prod mix release --env=prod
```
- Setup the environment vars:
```
export REPLACE_OS_VARS=true PORT=4000 HOST=example.com SECRET_KEY_BASE=highlysecretkey DB_NAME=myapp_dev DB_HOSTNAME=localhost
```
- Start
```
./_build/prod/rel/myapp/bin/myapp foreground
```
