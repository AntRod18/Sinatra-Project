class PostController < ApplicationController

    get '/posts' do
        redirect_if_not_logged_in
        @posts = current_user.posts
        erb :'/posts/index'
    end

    get '/new' do
        erb :'/posts/new'
    end

    post '/new' do 
        post = current_user.posts.build(:post => params['post'])
        post.save
            redirect "/posts/#{post.id}"
    end

    get '/posts/:id' do
        redirect_if_not_logged_in
        redirect_if_not_authorized

        erb :'posts/show'
    end

    def redirect_if_not_authorized
        @post = Post.find_by_id(params[:id])
        if @post.user_id != session["user_id"]
            redirect "/posts"
        end
    end

end