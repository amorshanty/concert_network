class Concert < ActiveRecord::Base
  validates_presence_of :band, :venue, :city, :date, :price, :description

  validates :band, uniqueness: true, length:{ maximum: 30 }
  validates :venue, length:{ maximum: 30 }
  validates :city, length:{ maximum: 30 }
  validates :price, numericality: true
  validates :description, length:{ maximum: 100 }

  def self.date_today
  	
  end

  def self.date_month
  	
  end
	
end
