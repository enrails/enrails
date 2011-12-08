class GalleriesController < ApplicationController
	def show
		@gallery=Gallery.find(params[:id])
		@sections=Section.all
	end
end
