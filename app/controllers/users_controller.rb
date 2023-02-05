class UsersController < ApplicationController
   
    get '/users' do
        users = User.order(:username)
        users.to_json(include: :posts)
    end

    post '/users' do
        users = User.create(
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
            username: params[:username],
            password: params[:password]
        )
        users.to_json(include: :posts)
    end

    patch '/users/:id' do
        users = User.find(params[:id])
        users.update(
            password: params[:password]
        )
        users.to_json(include: :posts)
    end

    delete '/users/:id' do
        users = User.find(params[:id])
        users.destroy
        users.to_json
        puts "This user has been deleted"
    end
end