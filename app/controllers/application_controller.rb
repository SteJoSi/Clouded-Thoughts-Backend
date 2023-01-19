class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/' do
    "Hello World"
  end
  
  # Add your routes here
  # get '/users' do
  #   users = User.order(:username)
  #   users.to_json({include: :posts})
  # end

  # post '/users' do
  #   users = User.create(
  #       first_name: params[:first_name],
  #       last_name: params[:last_name],
  #       email: params[:email],
  #       username: params[:username],
  #       password: params[:password]
  #   )
  #   users.to_json
  # end

  # patch '/users/:id' do
  #   users = User.find(params[:id])
  #   users.update(
  #       password: params[:password]
  #   )
  #   users.to_json
  # end

  # delete '/users/:id' do
  #   user = User.find(params[:id])
  #   user.destroy
  #   user.to_json
  # end

  # get '/posts' do
  #   posts = Post.all.order(:date)
  #   posts.to_json
  # end

  # post '/posts' do
  #   posts = Post.create(
  #     date: params[:date],
  #     title: params[:title],
  #     body: params[:body],
  #     user_id: params[:user_id]
  #   )
  #   posts.to_json
  # end

  # patch'/posts/:id' do
  #   posts = Post.find(params[:id])
  #   posts.update(
  #     body: params[:body]
  #   )
  #   posts.to_json
  # end

  # delete '/posts/:id' do
  #   posts = Post.find(params[:id])
  #   posts.destroy
  #   posts.to_json
  # end

end