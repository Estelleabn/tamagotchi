class AddRatingToPets < ActiveRecord::Migration
  def change
  	add_column :pets, :rating, :integer
  end
end
