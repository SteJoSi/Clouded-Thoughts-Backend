class PostsController < ApplicationController

    get "/posts" do
        { message: "Good luck with your project!" }.to_json
      end
    
    get '/posts' do
        posts = Post.all.order(:date)
        posts.to_json
    end

    post '/posts' do
        posts = Post.create(
            date: params[:date],
            title: params[:title],
            body: params[:body],
            user_id: params[:user_id]
        )
        posts.to_json
    end
    
    patch'/posts/:id' do
        posts = Post.find(params[:id])
        posts.update(
            body: params[:body]
        )
        posts.to_json
    end

    delete '/posts/:id' do
        posts = Post.find(params[:id])
        posts.destroy
        posts.to_json
    end
end