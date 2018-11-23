[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/sotayamashita/try-templarbit-buildpack.git)

```bash
heroku buildpacks:add https://heroku-buildpacks.templarbit.com/templarbit-agent-v4.tar.gz -a <App Name>
```

```bash
heroku config:set TB_PROPERTY_ID=xxx -a <App Name>
heroku config:set TB_SECRET_KEY=xxx  -a <App Name>
```

```bash
echo "web: templarbit bundle exec rails server" > Procfile
```
