class InstitutionController < ApplicationController
	def index
		
	end

	def list
		@institutions = Institution.all
	end
	   
	def show
		@institution = Institution.find(params[:id])
   	end
	   
	def new
		@institution = Institution.new
	end
	   
	def create
	   @institution = Institution.new(institution_params)
		
	   if @institution.save
	      redirect_to :action => 'list'
	   else
	      render :action => 'new'
	   end
	   
	end

	def institution_params
	   	params.require(:institutions).permit(:name, :cnpj, :kind)
	end
	   
	def edit
		@institution = Institution.find(params[:id])
	end
	   
	def update
		@institution = Institution.find(params[:id])
	
	    if @institution.update_attributes(institution_param)
	      	redirect_to :action => 'show', :id => @institution
	   	else
	      	render :action => 'edit'
	   	end
	end

	def book_param
	   	params.require(:institutions).permit(:name, :cnpj, :kind)
	end
	   
	def delete
		Institution.find(params[:id]).destroy
   		redirect_to :action => 'list'
	end
end
