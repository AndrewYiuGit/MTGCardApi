class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.belongs_to :mtg_set

      t.string :layout
      t.string :card_type
      t.string :card_types
      t.string :subtypes
      t.string :colors
      t.integer :multiverse_id
      t.string :name
      t.decimal :cmc
      t.string :rarity
      t.string :artist
      t.string :mana_cost
      t.text :oracle_text
      t.string :collector_number
      t.string :image_name
      t.string :legalities
      t.string :printings

      t.timestamps
    end
  end
end
