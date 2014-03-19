get "/about", _action: 'about'

get '/page/{_id}'

get '/contacts/{_id}/edit', _controller: 'contacts'

get '/contacts', _controller: 'contacts'

# The main route
get '/'