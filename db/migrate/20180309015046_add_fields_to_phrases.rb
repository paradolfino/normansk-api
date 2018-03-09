class AddFieldsToPhrases < ActiveRecord::Migration[5.1]
  def change
    add_column :phrases, :english, :text
    add_column :phrases, :normansk, :text
  end
end
