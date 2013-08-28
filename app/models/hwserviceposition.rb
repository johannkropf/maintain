class Hwserviceposition < ActiveRecord::Base
  attr_accessible :amount, :end_date, :period, :start_date, :hwservice_id, :hardware_id, :servicelevel_id

  belongs_to :hwservice
  belongs_to :hardware
  belongs_to :servicelevel
  #accepts_nested_attributes_for :hwservice

  def hardware_typehw
  	if hardware.nil?
  	  ""	
  	else 
      hardware.typehw 
    end 
  end 

  def hardware_model
  	if hardware.nil?
  	  ""	
  	else 
      hardware.model 
    end 
  end 

  def hardware_desc 
  	if hardware.nil?
  	  ""	
  	else 
      hardware.desc 
    end 
  end 

  def servicelevel_level
  	if servicelevel.nil?
  		""
  	else
  		servicelevel.level
  	end
  end
  def servicelevel_short_desc
  	if servicelevel.nil?
  		""
  	else
  		servicelevel.short_desc
  	end
  end


end
