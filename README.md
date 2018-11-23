[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/sotayamashita/try-templarbit-buildpack.git)

```
export AppName=
```

```bash
heroku buildpacks:add https://heroku-buildpacks.templarbit.com/templarbit-agent-v4.tar.gz -a $AppName
```

```bash
heroku config:set TB_PROPERTY_ID=xxx -a $AppName
heroku config:set TB_SECRET_KEY=xxx  -a $AppName
```

```bash
echo "web: templarbit bundle exec rails server" > Procfile
```
