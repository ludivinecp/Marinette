class CreateLocalisations < ActiveRecord::Migration
  def change
    create_table :localisations do |t|

    	t.string :place
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
