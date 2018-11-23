[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/sotayamashita/try-templarbit-buildpack.git)

```
export AppName=
export PROPERTY_ID=
export SECRET_KEY=
```

```bash
heroku buildpacks:add https://heroku-buildpacks.templarbit.com/templarbit-agent-v4.tar.gz -a $AppName
```

```bash
heroku config:set TB_PROPERTY_ID=$PROPERTY_ID -a $AppName
heroku config:set TB_SECRET_KEY=$SECRET_KEY -a $AppName
```

```bash
echo "web: templarbit bundle exec rails server" > Procfile
```

Log:

```
2018-11-23T08:54:17.119795+00:00 heroku[web.1]: State changed from crashed to starting
2018-11-23T08:54:17.097828+00:00 heroku[web.1]: Process exited with status 1
2018-11-23T08:54:22.561606+00:00 heroku[web.1]: Starting process with command `templarbit bundle exec rails server`
2018-11-23T08:54:25.036763+00:00 app[web.1]: Templarbit Agent takes over port 40914 and the app will listen on port 7539
2018-11-23T08:54:25.036793+00:00 app[web.1]: You can manually change port 7539 by setting $PROXY_PORT, example:
2018-11-23T08:54:25.037992+00:00 app[web.1]: heroku config:set PROXY_PORT=7540
2018-11-23T08:54:25.256045+00:00 app[web.1]: 2018/11/23 08:54:25 main.go:143: Property ID: 2587f3aa-534e-4f1a-add5-d4a91c2b16f9
2018-11-23T08:54:25.256055+00:00 app[web.1]: 2018/11/23 08:54:25 main.go:145: Listening on :40914 and serving upstream http://localhost:7539
2018-11-23T08:54:25.961635+00:00 heroku[web.1]: State changed from starting to up
2018-11-23T08:54:26.444084+00:00 app[web.1]: 2018/11/23 08:54:26 api.go:255: New configuration with fingerprint 137d196c1e70ec88b92079b015a9a52431f7443d7a014b0c1536fd095bb0af21
2018-11-23T08:54:26.656511+00:00 heroku[router]: at=info method=GET path="/" host=try-templarbit-buildpack1.herokuapp.com request_id=d6adbb20-6923-4d9f-bcc8-74fe2b8d0584 fwd="126.112.246.230" dyno=web.1 connect=0ms service=17ms status=502 bytes=156 protocol=https
2018-11-23T08:54:27.266303+00:00 heroku[router]: at=info method=GET path="/favicon.ico" host=try-templarbit-buildpack1.herokuapp.com request_id=0d9a6ad6-a08c-4427-9b4a-2dad74ebfba1 fwd="126.112.246.230" dyno=web.1 connect=0ms service=2ms status=502 bytes=156 protocol=https
2018-11-23T08:54:32.961289+00:00 app[web.1]: /app/vendor/bundle/ruby/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:272:in `initialize': Address already in use - bind(2) for "0.0.0.0" port 40914 (Errno::EADDRINUSE)
2018-11-23T08:54:32.961418+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:272:in `new'
2018-11-23T08:54:32.961445+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:272:in `add_tcp_listener'
2018-11-23T08:54:32.961467+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:105:in `block in parse'
2018-11-23T08:54:32.961487+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:88:in `each'
2018-11-23T08:54:32.961508+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:88:in `parse'
2018-11-23T08:54:32.961561+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/puma-3.12.0/lib/puma/runner.rb:151:in `load_and_bind'
2018-11-23T08:54:32.961588+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/puma-3.12.0/lib/puma/single.rb:96:in `run'
2018-11-23T08:54:32.961610+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/puma-3.12.0/lib/puma/launcher.rb:184:in `run'
2018-11-23T08:54:32.961631+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/puma-3.12.0/lib/rack/handler/puma.rb:70:in `run'
2018-11-23T08:54:32.961652+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/rack-2.0.6/lib/rack/server.rb:297:in `start'
2018-11-23T08:54:32.961676+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/railties-5.2.1/lib/rails/commands/server/server_command.rb:53:in `start'
2018-11-23T08:54:32.961727+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/railties-5.2.1/lib/rails/commands/server/server_command.rb:147:in `block in perform'
2018-11-23T08:54:32.961754+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/railties-5.2.1/lib/rails/commands/server/server_command.rb:142:in `tap'
2018-11-23T08:54:32.961779+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/railties-5.2.1/lib/rails/commands/server/server_command.rb:142:in `perform'
2018-11-23T08:54:32.961801+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/thor-0.20.3/lib/thor/command.rb:27:in `run'
2018-11-23T08:54:32.961824+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/thor-0.20.3/lib/thor/invocation.rb:126:in `invoke_command'
2018-11-23T08:54:32.961846+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/thor-0.20.3/lib/thor.rb:387:in `dispatch'
2018-11-23T08:54:32.961883+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/railties-5.2.1/lib/rails/command/base.rb:65:in `perform'
2018-11-23T08:54:32.961921+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/railties-5.2.1/lib/rails/command.rb:46:in `invoke'
2018-11-23T08:54:32.961946+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/railties-5.2.1/lib/rails/commands.rb:18:in `<main>'
2018-11-23T08:54:32.961971+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/bootsnap-1.3.2/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:21:in `require'
2018-11-23T08:54:32.961994+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/bootsnap-1.3.2/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:21:in `block in require_with_bootsnap_lfi'
2018-11-23T08:54:32.962017+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/bootsnap-1.3.2/lib/bootsnap/load_path_cache/loaded_features_index.rb:65:in `register'
2018-11-23T08:54:32.962040+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/bootsnap-1.3.2/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:20:in `require_with_bootsnap_lfi'
2018-11-23T08:54:32.962093+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/bootsnap-1.3.2/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:29:in `require'
2018-11-23T08:54:32.962119+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/activesupport-5.2.1/lib/active_support/dependencies.rb:287:in `block in require'
2018-11-23T08:54:32.962140+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/activesupport-5.2.1/lib/active_support/dependencies.rb:253:in `load_dependency'
2018-11-23T08:54:32.962166+00:00 app[web.1]: from /app/vendor/bundle/ruby/2.5.0/gems/activesupport-5.2.1/lib/active_support/dependencies.rb:287:in `require'
2018-11-23T08:54:32.962187+00:00 app[web.1]: from bin/rails:9:in `<main>'
2018-11-23T08:54:32.966638+00:00 app[web.1]: => Booting Puma
2018-11-23T08:54:32.966643+00:00 app[web.1]: => Rails 5.2.1 application starting in production
2018-11-23T08:54:32.966645+00:00 app[web.1]: => Run `rails server -h` for more startup options
2018-11-23T08:54:32.966647+00:00 app[web.1]: Puma starting in single mode...
2018-11-23T08:54:32.966648+00:00 app[web.1]: * Version 3.12.0 (ruby 2.5.3-p105), codename: Llamas in Pajamas
2018-11-23T08:54:32.966650+00:00 app[web.1]: * Min threads: 5, max threads: 5
2018-11-23T08:54:32.966652+00:00 app[web.1]: * Environment: production
2018-11-23T08:54:32.966653+00:00 app[web.1]: * Listening on tcp://0.0.0.0:40914
2018-11-23T08:54:32.966655+00:00 app[web.1]: Exiting
2018-11-23T08:54:33.036196+00:00 heroku[web.1]: Process exited with status 1
```

## Quick references:

- [How to install Templarbit on Heroku on YouTube](https://youtu.be/nzdWHkNCq6g)
- [How to configure Templarbit on Heroku](https://docs.templarbit.com/docs/heroku)
