require "slack-notify"
require 'clockwork'
require 'dotenv/load'
require 'active_support/time'
include Clockwork
client = SlackNotify::Client.new(webhook_url: ENV["URL"])
handler do |job|
  client.notify("Hello World")
end

every(3.minutes, 'hoge.job')