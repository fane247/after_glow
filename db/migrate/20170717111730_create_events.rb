class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.belongs_to :club, index: true
      t.string :name
      t.string :description
      t.string :line_up
      t.float :price
      t.datetime :time_start
      t.datetime :time_end
      t.string :image_url

      t.timestamps
    end
  end
end
