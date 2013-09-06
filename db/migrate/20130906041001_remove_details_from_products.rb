class RemoveDetailsFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :availability, :boolean
    remove_column :products, :notavailable, :boolean
    remove_column :products, :not_available, :boolean
  end
end
