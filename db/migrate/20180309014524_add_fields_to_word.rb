class AddFieldsToWord < ActiveRecord::Migration[5.1]
  def change
    add_column :words, :english, :string
    add_column :words, :normansk, :string
    add_column :words, :tense, :string
    add_column :words, :type, :string
  end
end
