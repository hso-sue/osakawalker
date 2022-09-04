class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.integer :shop_genre_id,      null: false
      t.string  :shop_name,          null: false
      t.text    :introduction,       null: false
      t.integer :shop_prefecture_id, null: false
      t.integer :shop_city_id,       null: false
      t.integer :shop_address_id
      t.timestamps
    end
  end
end
