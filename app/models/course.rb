class Course < ActiveRecord::Base
  has_many :reviews
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :address
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zipcode
  validates_presence_of :phone
  validates_presence_of :hole_count

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    [address, city, state, zipcode].join(',')
  end
end
