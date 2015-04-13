=begin
Recipe
 - id (auto)
 - UUID (auto)
 - url
 - name
 - type
 - portions
 - cookingtime
 - contents
 - summary
 - imageurl
=end

class Recipe < ActiveRecord::Base
  has_many :recipeingredients
  has_many :ingredients, through: :recipeingredients

  #UUID
  before_create :check_uuid
  def check_uuid
    unless(self.uuid)
      self.uuid = SecureRandom.uuid
    end
  end

  def calc_cost
    cost = []
    Storechain.all.each do |storechain|
      storechain_cost = 0
      self.ingredients.each do |ingredient|
        if(product = ingredient.products.where(storechain: storechain).first)
          storechain_cost += product.price.to_f;
        end
      end
      cost << storechain_cost
    end

    total = 0;

    cost.each do |c|
      total += c / cost.size
    end

    self.estimated_cost = total
  end
end
