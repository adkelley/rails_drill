class User < ActiveRecord::Base
  has_secure_password
  
  validates :email, :password_digest, presence: true

  def self.confirm(params)
    @user = User.find_by_email(params[:email])
    @user.try(:authenticate, params[:password])
  end
end
