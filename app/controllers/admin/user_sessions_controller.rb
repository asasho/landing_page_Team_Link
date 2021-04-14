class Admin::UserSessionsController < Admin::BaseController #BaseControllerを継承
  skip_before_action :check_admin, only: [:new, :create]
  
  def new
  end
  
  def create
    @user = User.find_by(email: params[:email]) #Sorceryメソッド。emailとpasswordでログイン認証する
    if @user.admin?
      redirect_to admin_root_path, success: 'ログインしました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end
  
  def destroy
    logout
    redirect_to admin_login_path, success: 'ログアウト'
  end
  
  private
    
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  
end
