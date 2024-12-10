class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :active, default: true
      t.boolean :featured, default: false
      t.date :publish_date
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
