class Admin::BaseController < ApplicationController
    before_action :check_admin #全体に適用
    layout 'admin/layouts/application' #layout宣言
    
    private
    
       #ログインしていないとき実行される
       def not_authenticated
           flash[:warning] = "ログインしてください"
           redirect_to admin_login_path
       end
       
       #管理者権限がないユーザを弾く
       def check_admin
           redirect_to root_path, warning: '権限がありません'  unless current_user.admin?
       end
    
end
