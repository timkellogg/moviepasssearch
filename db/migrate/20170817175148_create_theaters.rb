class CreateTheaters < ActiveRecord::Migration[5.1]
  def change
    create_table :theaters do |t|
      t.integer :githubid,  null: false, index: true
      t.string :name,       null: false
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip,       null: false, index: true
      t.float :distance
      t.float :lon
      t.float :lat
      t.string :theaterChainName
      t.string :ticketType
    end
  end
end
