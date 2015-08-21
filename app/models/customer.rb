class Customer < ActiveRecord::Base

  validates :firstname, presence: true

end
