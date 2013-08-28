class Servicelevel < ActiveRecord::Base
  attr_accessible :level, :long_desc, :short_desc

  has_many :hwservicepositions
  
  def selectString
    level + " - " + short_desc
  end
  
end
