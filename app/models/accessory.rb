class Accessory < ApplicationRecord

  scope :default_order, -> { order(created_at: :desc) }

end
