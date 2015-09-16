class BusinessesController < ApplicationController

	def index
		@businesses = Business.search(params[:search])
		@featured_business = Business.where("rating >= ?", 4).all.sample ## AND WHERE RESTAURANT IS NEAR A CERTAIN ZIPCODE BASED OFF CHROME LOCATION
		@featured_menu = Menu.where(business_id: @featured_business.id).all.sample
	end

	def new
		@business = Business.find(params[:id])
		@menusort = Menu.where(business_id: (params[:id])).all ## CHANGE THIS TO 'NET' MENU LIKES
		@menus = @menusort.sort_by{|menu| menu.likes}.reverse!
  	end

  	def search
  		if params[:query]
	        @query = params[:query]
	        @menus = []
	        @businesses = []
	        menu_list = Menu.all
	        menu_list.each do |menu|
	        	if menu.name.downcase.include? @query.downcase 
	        		@menus << menu
	        	end
	       	end

	        business_list = Business.all
	        business_list.each do |business|
	        	if business.name.downcase.include? @query.downcase
	        		@businesses << business
	        	end
	        end
	  	end
  	end

end
