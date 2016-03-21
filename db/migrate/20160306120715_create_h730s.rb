class CreateH730s < ActiveRecord::Migration
  def change
    create_table :h730s do |t|

      t.string :title
      t.string :content
      
      t.string :my_image
      t.timestamps null: false
    end
  end
end
