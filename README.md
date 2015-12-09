# TwitterHook

Monitor a Twitter account and trigger a webhook with tweet data using a single Heroku process.

## Getting started

Create a Heroku app, configure using environment variables, and start the worker.

```
git clone https://github.com/johndbritton/twitterhook
cd twitterhook
heroku create
git push heroku master
heroku config:set TWITTER_CONSUMER_KEY=[key]
heroku config:set TWITTER_CONSUMER_SECRET=[secret]
heroku config:set TWITTER_OAUTH_TOKEN=[token]
heroku config:set TWITTER_OAUTH_TOKEN_SECRET=[secret]
heroku config:set TWITTER_ID=[id]
heroku config:set WEBHOOK_URL=[url]
heroku ps:scale worker=1
```
