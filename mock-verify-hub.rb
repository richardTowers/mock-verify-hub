#!/usr/bin/env ruby

require 'sinatra'

set :port, 50190

post '/api/session' do
  status 201
  session_start_time = (Time.now.to_i * 1000).to_s
  <<-eos
  {
    "x_govuk_session_cookie":"",
    "x-govuk-secure-cookie":"",
    "session_start_time":#{session_start_time}
  }
  eos
end

get '/api/session/federation' do
  <<-eos
  {
    "transactionSimpleId":"test-rp",
    "transactionEntityId":"http://example.com/test-rp",
    "idps":["stub-idp-one"]
  }
  eos
end

