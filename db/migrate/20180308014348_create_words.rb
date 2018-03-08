class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.references :category, foreign_key: true
      t.string :english
      t.string :normansk
      t.string :tense
      t.string :type
      t.timestamps
    end
  end
end
