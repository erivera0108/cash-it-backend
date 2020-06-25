class CreateAuctions < ActiveRecord::Migration[6.0]
  def change
    create_table :auctions do |t|
      t.integer :item_id
      t.integer :minimun_offer

      t.timestamps
    end
  end
end
