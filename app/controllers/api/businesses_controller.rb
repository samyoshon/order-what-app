module API
  class BusinessesController < ApplicationController

		def index
			render json: Business.all
		end

		def show
			render json: Business.find(params[:id])
		end
 
		def create
			business = Business.new(business_params)

			if business.save
				render json: business, status: 201, location: [:api, business]
			else
				render json: business.errors, status: 422
			end
		end

		def update
			business = Business.find(params[:id])

			if business.update(business_params)
				head 204
			else
				render json: business.errors, status: 422
			end
		end

		def destroy
			business = Business.find(params[:id])
			business.destroy
			head 204
		end


		private
		def business_params
			params.require(:business).permit(:name, :rating, :address, :description, :tagline)
		end


  end

end