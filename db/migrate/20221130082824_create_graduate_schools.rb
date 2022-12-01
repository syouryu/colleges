class CreateGraduateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :graduate_schools do |t|

      t.string :graduate_school_name, null: false
      
      t.timestamps
    end
  end
end
