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
