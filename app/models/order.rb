class Order < ApplicationRecord
  before_create :generate_token
  belongs_to :user
  has_many :product_lists
  validates :billing_name, :billing_address, :shipping_name, :shipping_address, presence: true


    def generate_token
      self.token = SecureRandom.uuid
    end


end
