class UsersController < ApplicationController
    #here ill have the signup,Log in,sign out

       get '/registrations/signup' do
           erb :'registrations/signup'
       end
       
       post '/registraion/signup' do
        @user = User.new(username: params[:username],email: params[:email], password: params[:password])
           #your code here!
           if user.save
            session["user_id"] = user.id
            redirect "/login"
        else
            redirect "/sessions/signup"
        end

       end

       get '/sessions/login' do
           erb :'sessions/login'
       end

       post '/sessions/login' do
        erb 'users/home'
       end

       

       
   end
   
   
   
   
   
   