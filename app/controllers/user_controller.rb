require 'pry'

class UsersController < ApplicationController
    #here ill have the signup,Log in,sign out

       get '/signup' do
           erb :'registrations/signup'
       end
       
       post '/signup' do
		user = User.new(:username => params[:username], :password => params[:password])
		if user.save
            session["user_id"] = user.id
			redirect '/login'
		else
			redirect '/signup'
		end
	end

       get '/login' do
           erb :'sessions/login'
       end

       post '/login' do
        erb :'users/home'
       end

       get "/logout" do
		session.clear
		redirect "/"
	end

       
   end
   
   
   
   
   
   