class CreatePhotogalleries < ActiveRecord::Migration
  def change
    create_table :photogalleries do |t|
      t.string :title
      t.string :description
      t.string :posted_by
      t.date :date_posted

      t.timestamps
    end
  end
end
