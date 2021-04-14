class PasswordResetsController < ApplicationController
  before_action :get_user, only: [:edit, :update]
  before_action :valid_user, only: [:edit, :update]
  
  def new
  end
  
  def create
    @user = User.find_by(email: params[:password_reset][:email].downcase)
    if @user
      @user.create_reset_digest
      flash[:info] = "送信したアドレスにパスワードの再設定の手順のメールを送信しました"
      redirect_to root_url
    else
      flash.now[:danger] = "メールアドレスが無効です"
      render 'new'
    end
  end
  
  def edit
  end
  
  private
    def get_user
      @user = User.find_by(email: params[:email])
    end
    
    #正しいユーザかどうか確認する
    def valid_user
      unless (@user && @user.authenticated?(cookies[:remember_token]))
        redirect_to root_url
      end
    end
end
