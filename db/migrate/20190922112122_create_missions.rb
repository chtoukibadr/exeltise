class CreateMissions < ActiveRecord::Migration[5.1]
  def change
    create_table :missions do |t|
      t.string :title
      t.text :description
      t.datetime :startdate
      t.text :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
