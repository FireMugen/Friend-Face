module SessionHelper
	def current_user
		if session[:user_id]
			@current_user ||= User.find_by(id: session[:user_id])
		end
	end

	def current_user?(user)
		user == current_user
	end
end
