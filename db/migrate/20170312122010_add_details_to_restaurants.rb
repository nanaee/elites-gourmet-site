class AddDetailsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :detail, :text
  end
end
