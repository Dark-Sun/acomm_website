class CreateAdopters < ActiveRecord::Migration
  def change
    create_table :adopters do |t|
      t.string :name
      t.string :email
      t.string :country
      t.string :city
      t.string :website

      t.boolean :existing_local_storefront
      t.boolean :service_provider
      t.boolean :digital_content_seller
      t.boolean :future_or_beginning_vendor

      t.timestamps
    end
  end
end
