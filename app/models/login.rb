class Login < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:marvin]
  def self.from_omniauth(auth)
  	where(provider: auth.provider, uid: auth.id).first_or_create do |user|
  		user.email = auth.info.email
  		user.password = Devise.friendly_token[0,20]
  		user.nickname = auth.info.nickname
  		if auth.info.nickname == 'josh'
  			user.admin = true
  		else
  			unser.admin = false
  		end
  	end
  end
end
