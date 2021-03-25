class UsersController < ApplicationController
    #here ill have the signup,Log in,sign out

  get '/home' do
    redirect_if_not_logged_in
      erb :'users/home'
  end

  get '/signup' do
    redirect_if_logged_in
      erb :'registrations/signup'
  end
       
  post '/signup' do
    redirect_if_logged_in
		user = User.new(:username => params[:username], :password => params[:password])
		if user.save
            session["user_id"] = user.id
			redirect '/home'
		else
			redirect '/signup'
		end
	end

  get '/login' do
    redirect_if_logged_in
      erb :'sessions/login'
  end

  post '/login' do
    redirect_if_logged_in
    @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session['user_id'] = @user.id
        redirect to '/home'
      else
        redirect to '/login'
      end
  end

  delete "/logout" do
    redirect_if_not_logged_in
		session.delete("user_id")
		redirect "/"
	end
       
end
   
   
   
   
   
   