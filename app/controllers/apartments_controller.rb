class ApartmentsController < ApplicationController
	
	before_action :find_apartment, only: [:show, :edit, :update, :destroy]
	
	def index
		@apartments = Apartment.all
		@apartment = Apartment.all.order("created_at DESC")
			if params[:search]
			@rooms = Room.search(params[:search])
			else
			@rooms = Room.all.order('created_at DESC')
	 		 end
	end
	def search
	  if params[:q].nil?
	    @articles = []
	  else
	    @articles = Article.search params[:q]
	  end
	end
	def show
	end

	def new
		@apartment = current_user.apartments.build
	end

	def create
		@apartment = current_user.apartments.build(apartment_params)

		if @apartment.save
			redirect_to @apartment, notice:"Successfully created a new apartment"
		else
			render 'new'
		end
	end

	def edit
		
	end
	def update
		if @apartment.update(apartment_params)
			redirect_to @apartment
		else
			render 'edit'
		end		
	end
	
	def destroy
		@apartment.destroy
		redirect_to root_path, notice: "Successfully deleted recipe"
		
	end

	private 
		def apartment_params
			params.require(:apartment).permit(:title, :body, :zipcode,  :image, rooms_attributes: [:id, :name, :_destroy])
		end
		def find_apartment
			@apartment = Apartment.find(params[:id])
		end
	end

