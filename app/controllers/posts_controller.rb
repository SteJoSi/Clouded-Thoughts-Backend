require 'pry'

class PostsController < ApplicationController
    
    get '/posts' do
        posts = Post.order(:date)
        posts.to_json(include: :user)
    end

    post '/posts' do
        post = Post.create(
            date: params[:date],
            title: params[:title],
            body: params[:body],
            user_id: params[:user_id]
        )
        # binding.pry
        post.to_json(include: :user)
    end
    
    patch'/posts/:id' do
        posts = Post.find(params[:id])
        posts.update(
            body: params[:body]
        )
        posts.to_json(include: :user)
    end

    delete '/posts/:id' do
        posts = Post.find(params[:id])
        posts.destroy
        posts.to_json
        puts "This post has been deleted"
    end
end