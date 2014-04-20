class ChangeStringsToTextInMtgSets < ActiveRecord::Migration
  def up
    change_column :mtg_sets, :name, :text
    change_column :mtg_sets, :code, :text
    change_column :mtg_sets, :border, :text
    change_column :mtg_sets, :set_type, :text
    change_column :mtg_sets, :block, :text
  end

  def down
    change_column :mtg_sets, :name, :string
    change_column :mtg_sets, :code, :string
    change_column :mtg_sets, :border, :string
    change_column :mtg_sets, :set_type, :string
    change_column :mtg_sets, :block, :string
  end
end
