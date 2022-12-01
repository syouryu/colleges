class CreateLaboratories < ActiveRecord::Migration[7.0]
  def change
    create_table :laboratories do |t|

      t.string :name, null: false
      t.text :content, null: false
      t.references :graduate_school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
