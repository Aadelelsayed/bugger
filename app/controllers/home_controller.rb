class HomeController < ApplicationController
	before_action :authenticate_user!

	def index
		@entites = get_entities_for_user		
	end

	private
		def get_entities_for_user
			case current_user.user_type
				when User.roles["Manager"]
					return current_user.projects
				when User.roles["Developer"]
					return Bugs.where(:assigned_id => current_user.id)
				when User.roles["QA"]
					return user.bugs	
			end	
		end
end
