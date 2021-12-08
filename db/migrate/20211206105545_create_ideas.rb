class CreateIdeas < ActiveRecord::Migration[6.1]
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :content
      t.boolean :project
      t.string :project_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
