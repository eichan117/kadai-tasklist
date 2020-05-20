module SessionsHelper
 def current_user
   if @current_user.nil?
      @current_user =  User.find_by(id: session[:user_id])
   else
      @current_user =  @current_user
   end
 end
    
 def logged_in?
   # ログインしてない場合にはnilを返す
   !!current_user
   
 end    
end
