class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :nome, unique: true, null: false
      t.string :sigla, unique: true, null: false
      t.string :site, unique: true, null: false

      t.timestamps
    end
  end
end
