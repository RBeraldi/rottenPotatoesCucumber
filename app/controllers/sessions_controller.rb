class SessionsController < ApplicationController


 def login

 end


 def create
   name = params[:user][:name]
   @users=Moviegoer.where(:name => name)
   if @users.length>0
      session[:user_id]='1'
      redirect_to movies_path 
   else
      redirect_to login_path 
   end
 end

end
