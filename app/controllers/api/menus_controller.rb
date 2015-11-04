module API
  class MenusController < ApplicationController

		def index
			render json: Menu.all
		end

		def show
			render json: Menu.find(params[:id])
		end
 
		def create
			menu = Menu.new(menu_params)

			if menu.save
				render json: menu, status: 201, location: [:api, menu]
			else
				render json: menu.errors, status: 422
			end
		end

		def update
			menu = Menu.find(params[:id])

			if menu.update(menu_params)
				head 204
			else
				render json: menu.errors, status: 422
			end
		end

		def destroy
			menu = Menu.find(params[:id])
			menu.destroy
			head 204
		end


		private
		def menu_params
			params.require(:menu).permit(:name)
		end


  end

end