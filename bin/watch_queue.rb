#!/usr/bin/env ruby

require "rubygems"
require "mq"

AMQP.start(:host => "localhost") do
  MQ.queue("qusion").subscribe do |message|
    p "Qusion published #{message}"
  end
end