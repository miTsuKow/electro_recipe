class Accessory < ApplicationRecord
  has_many :materials
  has_many :recipes

  accepts_nested_attributes_for :materials, allow_destroy: true
  accepts_nested_attributes_for :recipes, allow_destroy: true

  scope :default_order, -> { order(created_at: :desc) }

end
