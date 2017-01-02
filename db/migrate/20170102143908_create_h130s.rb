class CreateH130s < ActiveRecord::Migration
  def change
    create_table :h130s do |t|

      t.string :title
      t.string :content
      
      
      t.timestamps null: false
    end
  end
end
