class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :photo
      t.string :header
      t.string :name
      t.string :location
      t.string :website
      t.text :bio
      t.belongs_to :user

      t.timestamps
    end
  end
end
