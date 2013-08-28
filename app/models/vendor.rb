class Vendor < ActiveRecord::Base
  attr_accessible :location, :name1, :name2, :nationality, :street, :vendor_id, :zip

  has_many :hwservices
  
  def selectString
    vendor_id + " - " + name1 + " " + location
  end
    
 end
