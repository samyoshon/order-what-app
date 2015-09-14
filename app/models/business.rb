class Business < ActiveRecord::Base
	has_many :menus

	def self.search(search)

		if search
			find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
		end
	end

end
