class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.references :user, foreign_key: true, null: false
      t.string :body, null: false

      t.timestamps
    end
  end
end
