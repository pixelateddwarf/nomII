class Place < ActiveRecord::Base
  belongs_to :user
  validates :address, :presence => true, :length => { :maximum => 140, :minimum => 3 }
  validates :description, :presence => true, :length => { :maximum => 200, :minimum => 3 }
  validates :name, :presence => true, :length => { :maximum => 100, :minimum => 3 }
end
