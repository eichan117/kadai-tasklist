class ApplicationController < ActionController::Base
 
 include SessionsHelper
 
 private
 #ログインが済んでいるユーザーか確認
 def require_user_logged_in
  # ログインしていない場合には、ログインページにリダイレクトさせる
  unless logged_in?
    redirect_to login_url
  end 
 end 
end