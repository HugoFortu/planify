class CreateElements < ActiveRecord::Migration[6.1]
  def change
    create_table :elements do |t|
      t.string :name
      t.boolean :checked, default: false
      t.integer :quantity
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
