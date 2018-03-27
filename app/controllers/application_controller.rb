class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def active_members
  	active_users = Member.where(active: true).joins(:team).where(teams: { active: true})
  	ret = Array.new
  	active_users.each do |mem|
  		ret.push(mem.intra)
  	end
  	return ret
  end
  def active_members_full
  	active_users = Member.where(active: true).joins(:team).where(teams: { active: true})
  end
  
  def active_teams
  	active_users = Team.where(active: true).pluck(:name)
  end

  def still_to_go
  	curr = active_teams
  	ret = Team.where(active: true).joins(:all_hands).where(created_at: (Time.now.midnight - 5.day)..Time.now).pluck(:name)
  	return curr - ret
  end

  helper_method :still_to_go
  helper_method :active_members
  helper_method :active_members_full
 
  # before_action :authenticate_login!

end
