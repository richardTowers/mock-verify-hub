mock-verify-hub
===============

A mock API to be called by verify-frontend when developing. This is not intended to behave in a
particularly realistic fashion, but should instead provide just enough functionality to develop
against `alphagov/verify-frontend` without needing to run all of the other microservices.

Installation
---------------

This is a ruby app, using [bundler](http://bundler.io/). Once you have ruby and bundler set up just run:

```
bundle
```

Running
---------------

First follow the instructions for setting up `verify-frontend`.

Make sure that the .env file in `verify-frontend` points at the correct port (50190 by default):

```
API_HOST=http://localhost:50190
```

Start the server:

```
ruby mock-verify-hub.rb
```

You should now be able to use `verify-frontend` by visiting `http://localhost:50300/test-saml` and clicking `saml-post`.

Developing
---------------

This is intended to be extremely simple to set up and develop against. In that spirit we're going to start with a
[Sinatra](http://www.sinatrarb.com/) app in a single ruby file and see how we get on.

It shouldn't be necessary to add anything beyond trivial functionality.

