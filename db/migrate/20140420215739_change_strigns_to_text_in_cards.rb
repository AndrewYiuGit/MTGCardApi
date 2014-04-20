class ChangeStrignsToTextInCards < ActiveRecord::Migration
  def up
    change_column :cards, :layout, :text
    change_column :cards, :card_type, :text
    change_column :cards, :card_types, :text
    change_column :cards, :subtypes, :text
    change_column :cards, :colors, :text
    change_column :cards, :name, :text
    change_column :cards, :rarity, :text
    change_column :cards, :artist, :text
    change_column :cards, :mana_cost, :text
    change_column :cards, :collector_number, :text
    change_column :cards, :image_name, :text
    change_column :cards, :legalities, :text
    change_column :cards, :printings, :text
  end

  def down
    change_column :cards, :layout, :string
    change_column :cards, :card_type, :string
    change_column :cards, :card_types, :string
    change_column :cards, :subtypes, :string
    change_column :cards, :colors, :string
    change_column :cards, :name, :string
    change_column :cards, :rarity, :string
    change_column :cards, :artist, :string
    change_column :cards, :mana_cost, :string
    change_column :cards, :collector_number, :string
    change_column :cards, :image_name, :string
    change_column :cards, :legalities, :string
    change_column :cards, :printings, :string
  end
end
