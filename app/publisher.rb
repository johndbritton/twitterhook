require 'celluloid'
require 'http'

class Publisher
  include Celluloid

  def perform(webhook_url, tweet)
    HTTP.post(webhook_url, json: tweet.to_h)
  end
end
