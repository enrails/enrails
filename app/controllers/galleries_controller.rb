class GalleriesController < ApplicationController
	before_filter :requirelogado
	def show
		@gallery=Gallery.find(params[:id])
		@sections=Section.all
	end
end
