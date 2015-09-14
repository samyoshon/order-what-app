class Menu < ActiveRecord::Base
  belongs_to :user
  belongs_to :business

  has_many :comments
end
