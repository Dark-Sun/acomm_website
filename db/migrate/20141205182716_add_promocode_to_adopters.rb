class AddPromocodeToAdopters < ActiveRecord::Migration
  def change
    add_column :adopters, :promocode, :string
  end
end
