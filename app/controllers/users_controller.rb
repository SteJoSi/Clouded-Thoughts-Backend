class UsersController < ApplicationController
   
    get '/users' do
        users = User.all.order(:username)
        users.to_json
    end

    post '/users' do
        users = User.create(
            username: params[:username],
            password: params[:password]
        )
        users.to_json
    end

    patch '/users/:id' do
        users = User.find(params[:id])
        users.update(
            password: params[:password]
        )
        users.to_json
    end

    delete '/users/:id' do
        user = User.find(params[:id])
        user.destroy
        user.to_json
    end
end