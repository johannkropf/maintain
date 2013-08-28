class Hardware < ActiveRecord::Base
  attr_accessible :desc, :location, :model, :serialnr, :typehw

  has_many :hwservicepositions

  def selectString
    typehw + " " + model + " " + serialnr + " " + desc
  end

end
