#!/usr/bin/env ruby

require 'sinatra'

set :port, 50190

post '/api/session' do
  status 201
  %({
    "sessionId":"blah",
    "secureCookie":"blah",
    "sessionStartTime":32503680000000,
    "transactionSimpleId":"test-rp"
  })
end

get '/api/session/federation' do
  %({
    "transactionSimpleId":"test-rp",
    "transactionEntityId":"http://example.com/test-rp",
    "idps":[{
      "simpleId":"stub-idp-one",
      "entityId":"http://example.com/stub-idp-one"
    }]
  })
end

put '/api/session/select-idp' do
  %({
    "encryptedEntityId":"not-blank"
  })
end

get '/api/session/idp-authn-request' do
  %({
    "location":"http://www.example.com",
    "samlRequest":"blah",
    "relayState":"whatever",
    "registration":false
  })
end

get '/api/transactions' do
  %({
    "public":[{
      "simpleId":"test-rp",
      "entityId":"http://example.com/test-rp",
      "homepage":"http://example.com/test-rp"
    }],
    "private":[]
  })
end

