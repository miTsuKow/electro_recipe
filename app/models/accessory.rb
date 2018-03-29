class Accessory < ApplicationRecord
  has_many :materials
  has_many :recipes
  scope :default_order, -> { order(created_at: :desc) }

end
