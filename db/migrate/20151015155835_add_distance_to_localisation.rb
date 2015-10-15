class AddDistanceToLocalisation < ActiveRecord::Migration
  def change
    add_column :localisations, :distance, :float
  end
end
