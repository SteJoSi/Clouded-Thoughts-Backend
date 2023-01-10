class UsersController < ApplicationController
    # gets all users and returns it as json
    get '/users' do
        users = User.all
        users.to_json
    end

    # creates a new user with params and return it as json
    post '/users' do
        users = User.create(
            username: params[:username],
            password: params[:password]
        )
        users.to_json
    end

    # updates the password of the user
    patch '/users/:id' do
        users = User.find(params[:id])
        users.update(
            password: params[:password]
        )
        users.to_json
    end

    # deletes the user
    delete '/users/:id' do
        user = User.find(params[:id])
        user.destroy
        user.to_json
    end
end