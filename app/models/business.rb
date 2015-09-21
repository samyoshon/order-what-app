class Business < ActiveRecord::Base
	
	has_many :menus

	def self.search(search)

		if search
			find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
		end
	end

	# API related below

	validates :name, presence: true

	def as_json(options={})
		super(:except => [:created_at, :updated_at])
	end

end

