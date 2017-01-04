class Course < ActiveRecord::Base
  has_many :reviews
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

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
