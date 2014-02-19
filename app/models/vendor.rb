class Vendor < ActiveRecord::Base
  attr_accessible :location, :name1, :name2, :nationality, :street, :vendor_id, :zip

  validates :name1, presence: true

  has_many :hwservices
  
  def selectString
    vendor_id + " - " + name1 + " " + location
  end
    
 end
