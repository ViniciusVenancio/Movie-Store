class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.integer :age
      t.belongs_to :movie
      t.timestamps null: false
    end
  end
end
