#!/usr/bin/env ruby

require 'sinatra'

set :port, 50190

post '/api/session' do
  status 201
  session_start_time = (Time.now.to_i * 1000).to_s
  '{"x_govuk_session_cookie":"","x-govuk-secure-cookie":"","session_start_time":' + session_start_time + '}'
end

