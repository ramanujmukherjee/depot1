class AddNotAvailableToProducts < ActiveRecord::Migration
  def change
    add_column :products, :not_available, :boolean
  end
end
