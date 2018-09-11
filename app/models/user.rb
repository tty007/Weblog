class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         #authenticationに使うキーを設定する
        #  :authentication_keys[];
  validates :name, presence: true, uniqueness: true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  #登録時にメールアドレスを不要にする（オーバーライド）
  def email_required?
    false
  end

  def email_changed?
    false
  end
end
