class RegistrationsController < Devise::RegistrationsController
  protect_from_forgery with: :exception

	def after_sign_in_path_for(resource)
	  events_path
	end

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :dob, :music_genre_likes, :bio, :height, :city, :interests, :seeking_age_range_low, :seeking_age_range_high])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name, :dob, :music_genre_likes, :bio, :height, :city, :interests, :seeking_age_range_low, :seeking_age_range_high])
	end
end
