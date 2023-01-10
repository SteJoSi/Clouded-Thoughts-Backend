class PostsController < ApplicationController
    # gets all posts and returns it as json
    get '/posts' do
        posts = Post.allocate
        posts.to_json
    end

    # creates a new post with params and returns it as a json
    post '/posts' do
        posts = Post.create(
            date: params[:date],
            title: params[:title],
            body: params[:body],
            user_id: params[:user_id]
        )
        posts.to_json
    end
    
    # updates the body of the selected post
    patch'/posts/:id' do
        posts = Post.find(params[:id])
        posts.update(
            body: params[:body]
        )
        posts.to_json
    end

    # deletes the post from the database
    delete '/posts/:id' do
        posts = Post.find(params[:id])
        posts.destroy
        posts.to_json
    end
end