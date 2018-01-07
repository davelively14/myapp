# Myapp

- Go to `/assets` and run both of the following commands:
```
$ npm install
...
$ brunch build --production
```
- From the root, run the following commands:
```
$ MIX_ENV=prod mix phx.digest
...
$ MIX_ENV=prod mix release --env=prod
```
- Setup the environment vars from the root directory:
```
export REPLACE_OS_VARS=true PORT=4000 HOST=example.com SECRET_KEY_BASE=highlysecretkey DB_NAME=myapp_dev DB_HOSTNAME=localhost
```
- Start the server
```
./_build/prod/rel/myapp/bin/myapp foreground
```
