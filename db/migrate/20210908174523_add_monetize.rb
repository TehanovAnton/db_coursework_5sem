class AddMonetize < ActiveRecord::Migration[6.1]
  def change
    add_monetize :services, :price
  end
end
