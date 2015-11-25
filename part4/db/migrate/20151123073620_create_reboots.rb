class CreateReboots < ActiveRecord::Migration
  def change
    create_table :reboots do |t|
      t.string :title
      t.text :description
      t.integer :type

      t.timestamps null: false
    end
  end
end
