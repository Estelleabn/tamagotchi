class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.integer :user_id
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
