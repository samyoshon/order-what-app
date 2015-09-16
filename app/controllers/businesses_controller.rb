class BusinessesController < ApplicationController

	def index
		@businesses = Business.search(params[:search])
		@featured_business = Business.where("rating >= ?", 4).all.sample ## AND WHERE RESTAURANT IS NEAR A CERTAIN ZIPCODE BASED OFF CHROME LOCATION
		@featured_menu = Menu.where(business_id: @featured_business.id).all.sample
	end

	def new
		@business = Business.find(params[:id])
		@menus = Menu.where(business_id: (params[:id])).all ## CHANGE THIS TO 'NET' MENU LIKES
		@menus.sort_by{|menu| menu.likes}
  	end


end
