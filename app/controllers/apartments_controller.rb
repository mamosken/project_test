class ApartmentsController < ApplicationController
	
	before_action :find_apartment, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
	def index
		
		if params[:category].blank?
			@apartments = Apartment.all
			@apartment = Apartment.all.order("created_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@apartments = Apartment.all
			@apartment = Apartment.where(category_id: @category_id).order("created_at DESC")

		end

		if params[:search].present?
			@rooms = Room.search(params[:search]) 
		elsif params[:search].blank?
			@rooms = nil
		end
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
		redirect_to root_path, notice: "Successfully deleted apartment"
	end

	private 
		def apartment_params
			params.require(:apartment).permit(:title, :body,:category_id, :zipcode, :image, rooms_attributes: [:id, :name, :_destroy]).merge(user: current_user)

		end
		def find_apartment
			@apartment = Apartment.find(params[:id])
		end
	end

