class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.integer :user_id
      t.integer :auction_id
      t.integer :offer

      t.timestamps
    end
  end
end
