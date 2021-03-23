class UsersController < ApplicationController
    #here ill have the signup,Log in,sign out
       get '/signup' do
           erb :'registrations/signup'
       end
       
       post '/signup' do
        @user = User.new(username: params[:username],email: params[:email], password: params[:password])
           #your code here!
           @user.save
               redirect '/login'
       end

       get '/login' do
           erb :'sessions/login'
       end

       

       
   end
   
   
   
   
   
   