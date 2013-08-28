class Hwservice < ActiveRecord::Base
  attr_accessible :issue_date, :ordernr, :period_of_notice, :renewal_auto, :startdate, :subordernr, :vendor_id, :validity, :desc

  has_many :hwservicepositions, :dependent => :destroy
  belongs_to :vendor

  def vendor_ident
  	if vendor.nil?
  	  ""	
  	else 
      vendor.vendor_id
    end 
  end
  
  def vendor_name1
  	if vendor.nil?
      ""
    else
      vendor.name1
    end
  end
  
  def vendor_location
  	if vendor.nil?
      ""
    else   
      vendor.location
    end
  end
  
  def validuntil
  	if startdate.nil? || validity.nil?
  	  ""
  	else  
      startdate + validity.months - 1.days
    end 
  end 

end

