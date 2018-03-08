class CreatePhrases < ActiveRecord::Migration[5.1]
  def change
    create_table :phrases do |t|
      t.references :category, foreign_key: true
      t.references :word, foreign_key: true
      t.text :english
      t.text :normansk
      t.timestamps
    end
  end
end
