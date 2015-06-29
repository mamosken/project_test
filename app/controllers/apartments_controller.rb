class ApartmentsController < ApplicationController
	
	before_action :find_apartment, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
	def index
		
		if params[:category].blank? || params[:price].blank?
			@apartment = Apartment.all.order("created_at DESC")

		else
			@category_id = Category.find_by(name: params[:category]).id
			@apartment = Apartment.where(category_id: @category_id).order("created_at DESC")
		end


		if params[:price].blank?
			@apartment = Apartment.all.order("created_at DESC")
		else 
			@price_id = Price.find_by(range: params[:price]).id
			@apartment = Apartment.where(price_id: @price_id).order("created_at DESC")
		end	

		if params[:search].present?
			@rooms = Room.search(params[:search]) 
		elsif params[:search].blank?
			@rooms = nil
		end
			@apartments = Apartment.all
			@category =Category.all.order('name ASC')
			@prices = Price.all
			@categories =Category.all.order('name ASC')
	end

	def show
			@prices = Price.all
			@categories =Category.all.order('name ASC')

			# @apartment = Apartment.find_by(postal_code: params[:postal_code])
			@hash = Gmaps4rails.build_markers(@apartment) do |apartment, marker|
				marker.lat apartment.latitude
				marker.lng apartment.longitude
				marker.infowindow @apartment.postal_code
			end
	end

	def find
		@prices = Price.all
		@categories =Category.all.order('name ASC')
		# @category = Category.all
		# @apartment_id = Apartment.find(postal_code: postal_code)
		@category = Category.find_by(url_name: params[:neighborhood])
		@apartments = Apartment.where(category: @category)
		@hash = Gmaps4rails.build_markers(@apartments) do |apartment, marker|
			marker.lat apartment.latitude
			marker.lng apartment.longitude
			marker.infowindow apartment.title
		end
	end

	def new
		@prices = Price.all
		@apartment = Apartment.new
		@categories =Category.all.order('name ASC')

	end

	def create
		@apartment = Apartment.new(apartment_params)

		if @apartment.save
			redirect_to @apartment, notice:"Successfully created you new roomy"
		else
			render 'new'
		end
	end

	def edit

		@categories =Category.all.order('name ASC')
		@prices = Price.all

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
			params.require(:apartment).permit(:title, :body, :category_id, :price_id, :image, rooms_attributes: [:id, :name, :_destroy]).merge(user: current_user)
		end
		def find_apartment
			@apartment = Apartment.find(params[:id])
		end
	end

