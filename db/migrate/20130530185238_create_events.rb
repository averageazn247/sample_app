class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :user
      t.string :name
      t.text :description
      t.date :dayof

      t.timestamps
    end
  end
end
