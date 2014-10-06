get "/about", _action: 'about'

# get '/contacts/{_id}/edit', _controller: 'contacts'


get '/contacts', _controller: 'contacts'

get '/{{_route}}'

# The main route
get '/'