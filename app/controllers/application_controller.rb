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
    puts "\n\n\n" + ret.to_s + "\n\n\n"
  	return curr - ret
  end

  def is_admin
    return true
    # redirect_to new_correction_url unless login_signed_in? && current_login.admin == true
  end

  def what_team
    ret = Member.where("intra like ?", 'jtrujill')
    # ret = Team.where(active: true).joins(:members).where(intra: { 'jtrujill' } )
    puts ret.ids
    return ret.to_s
  end

  helper_method :still_to_go
  helper_method :active_members
  helper_method :active_members_full
  helper_method :what_team

  # before_action :authenticate_login!

end
