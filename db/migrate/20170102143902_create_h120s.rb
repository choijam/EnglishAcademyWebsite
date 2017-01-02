class CreateH120s < ActiveRecord::Migration
  def change
    create_table :h120s do |t|


      t.string :title
      t.string :content
      
      t.timestamps null: false
    end
  end
end
