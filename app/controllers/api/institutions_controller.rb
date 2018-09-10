class Api::InstitutionsController < ApplicationController
	def index
	    @institutions = Institution.all
	    respond_to do |format|
	      	format.json { render :json => @institutions }
	    end
	end
end
