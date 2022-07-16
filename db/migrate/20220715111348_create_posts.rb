class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :text,       null: false
      t.integer    :feeling_id, null: false
      t.integer    :color_id,   null: false
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
