class CreateAnnoucements < ActiveRecord::Migration[6.1]
  def change
    
    create_table :annoucements do |t|
      t.string :title
      t.string :description
      t.string :adress
      t.integer :zip_code
      t.string :city
      t.integer :price
      t.integer :size
      t.string :typeHome
      t.belongs_to :user


      t.timestamps
    end
  end
end
