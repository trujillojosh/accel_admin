class Login < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:marvin]

  def self.from_omniauth(auth)
  	puts "\n\n\nid is\n" + auth.info.email.to_s + "\n\n\n"
  	where(email: auth.info.email).first_or_create do |user|
  		user.email = auth.info.email
  		user.password = Devise.friendly_token[0,20]
  		user.nickname = auth.info.nickname
  		if auth.info.nickname == 'josh'
  			user.admin = true
  		else
  			user.admin = false
  		end
  	end
  end
end
