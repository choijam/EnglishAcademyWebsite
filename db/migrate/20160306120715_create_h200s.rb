class CreateH200s < ActiveRecord::Migration
  def change
    create_table :h200s do |t|

      t.string :title
      t.string :content
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
