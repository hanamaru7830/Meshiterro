class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #このモデルには、deviseで利用する機能が記述されています。(デフォルト)

         #パスワードの正確性を検証, ユーザ登録や編集、削除
  devise :database_authenticatable, :registerable,
        #パスワードをリセット, ログイン情報を保存, emailのフォーマットなどのバリデーション
         :recoverable, :rememberable, :validatable
         
  has_many :post_images, dependent: :destroy       
end
