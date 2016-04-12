#!/usr/bin/env ruby

require 'sinatra'

set :port, 50190

post '/api/session' do
  status 201
  '{}'
end

