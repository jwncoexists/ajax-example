class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :title
      t.text :description
      t.integer :credits

      t.timestamps
    end
    add_index :courses, :code
    add_index :courses, :title
  end
end
