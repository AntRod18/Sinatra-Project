require 'pry'

class UsersController < ApplicationController
    #here ill have the signup,Log in,sign out

       get '/registrations/signup' do
           erb :'registrations/signup'
       end
       
       post 'registrations/signup' do
		@user = User.new(:username => params[:username], :password => params[:password])
        binding.pry
		if @user.save
            session["user_id"] = user.id
			redirect '/sessions/login'
		else
			redirect '/registrations/signup'
		end
	end

       get '/sessions/login' do
           erb :'sessions/login'
       end

       post '/sessions/login' do
        erb 'users/home'
       end

       

       
   end
   
   
   
   
   
   