class ApartmentsController < ApplicationController
	
	before_action :find_apartment, only: [:show, :edit, :update, :destroy]
	
	def index
		@apartment = Apartment.all.order("created_at DESC")
	end
	def show
	end

	def new
		@apartment = Apartment.new
	end

	def create
		@apartment = Apartment.new(apartment_params)

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
			params.require(:apartment).permit(:title, :body)
			
		end
		def find_apartment
			@apartment = Apartment.find(params[:id])
		end
	end

