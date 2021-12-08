class AddReferenceToTask < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :type, foreign_key: true
  end
end
