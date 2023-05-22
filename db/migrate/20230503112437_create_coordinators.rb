class CreateCoordinators < ActiveRecord::Migration[7.0]
  def change
    create_table :coordinators do |t|
      t.string :nome, null: false
      t.string :matricula, unique: true, null: false
      t.string :senha, null: false
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
