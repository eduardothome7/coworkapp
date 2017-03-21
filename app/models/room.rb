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
  validates :email, presence: true, :if => :active_or_location?
  validates :telephone, presence: true, :if => :active_or_location?
  validates :celphone, presence: true, :if => :active_or_location?
  after_create :set_active
  has_many :photos

  def set_active
  	active = true
  end

  def active?
  	active == true
  end

  def active_or_location?
    status.include?('location')
  end

end
