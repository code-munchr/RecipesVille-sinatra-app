class UserController < ApplicationController
	
     get '/users/new' do
     	erb :'/users/new'
     end

     post '/users/create' do
     	raise params.inspect
     end

	

	
end

