class UsersController < ApplicationController
  before_action :authenticate_user!
    
    def create
        @user = User.new(user_params)
        @user.save
        redirect_to user_path(id: current_user)
    end
    # マイページへのアクション
    def show
        @user = current_user
    end
    # 登録情報編集へのアクション
    def edit
        @user = current_user
    end
    # 登録情報の編集を保存するアクション
    def update
        @user = current_user
        if @user.update(user_params)
        else
            render 'edit'
        end
    end
    # 登録情報編集画面から退会ページを表示するアクション
    def unsubscribe
      
    end
    # 退会アクション
    def withdraw
        @user = current_user
        
        # カラムにフラグを立てる(default→false(有効状態)をtrue(無効状態)にする）
        @user.update(is_deleted: true)
        # ログアウトさせる
        reset_session

        flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
        redirect_to root_path
    end

    private
        def user_params
            params.require(:user).permit(:name, :email, :nickname, :age, :is_deleted, :public)
        end
end