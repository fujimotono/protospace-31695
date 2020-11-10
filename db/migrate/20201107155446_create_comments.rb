class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :prototype_id
      t.text :text
      t.timestamps
      t.references :prototype, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
