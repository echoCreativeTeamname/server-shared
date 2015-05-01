=begin
Product
 - id (auto)
 - storechain_id
 - name (also identifier)
 - price
 - ingredient_id
 - amount
 - image_url? TODO
=end


class Product < ActiveRecord::Base

  belongs_to :storechain
  belongs_to :ingredient

  validates :name, :price, :storechain, presence: true

  before_save :update_last_updated
  def update_last_updated
    self.lastupdated = Time.now
  end

end
