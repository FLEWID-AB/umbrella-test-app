# KvUmbrella

Run `MIX_ENV=prod iex -S mix phx.server`

### In Hello:

```
  config :hello, HelloWeb.Endpoint,
  load_from_system_env: true,
  url: [scheme: "https", host: {:system, "MANAGER_HOST"}, port: {:system, "MANAGER_HOST_PORT"}],
  cache_static_manifest: "priv/static/cache_manifest.json"
```

### In Hello 2

```
  config :hello2, Hello2Web.Endpoint,
  load_from_system_env: true,
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json"
```

