class Room < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  
  validates :address, presence: true, :if => :active?
  validates :cep, presence: true, :if => :active?
  validates :n, presence: true, :if => :active?
  validates :country, presence: true, :if => :active?
  validates :city, presence: true, :if => :active?
  validates :ngb, presence: true, :if => :active?

  validates :email, presence: true, :if => :timetable?
  validates :telephone, presence: true, :if => :timetable?
  validates :celphone, presence: true, :if => :timetable?

  after_create :set_active
  has_many :photos
  mount_uploader :cover, PictureUploader  

  def set_active
  	active = true
  end

  def active?
  	active == true
  end

  def active_or_location?
    # status.include?('location')
  end

  def timetable?
    # status.include?('timetable')
  end

  def contact?
    # status.include?('contact')
  end

  def full_address
   "#{address} #{n}, #{ngb}, #{city} - #{country}"
  end

  def complete

    if instagram_profile
     "40"
    end
  
  end

end
