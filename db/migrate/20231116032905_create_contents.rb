class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|
      t.references :article, null: false, foreign_key: true
      t.text :body
      t.integer :position
      t.timestamps
    end
  end
end
