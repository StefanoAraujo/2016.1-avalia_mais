class DenunciationsController < ApplicationController
	def create
		if Denunciation.create(topic_id: params[:session][:topic_id], user_id: params[:session][:user_id])
			redirect_to Topic.find(params[:session][:topic_id])
		else
			# error
		end
	end
end