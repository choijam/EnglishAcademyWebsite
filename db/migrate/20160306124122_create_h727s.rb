class CreateH727s < ActiveRecord::Migration
  def change
    create_table :h727s do |t|

      t.string :title
      t.string :content
      
      t.timestamps null: false
    end
  end
end
