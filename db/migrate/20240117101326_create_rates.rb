class CreateRates < ActiveRecord::Migration[7.0]
  def change
    create_table :rates do |t|
      t.belongs_to :account, foreign_key: true
      t.belongs_to :post, foreign_key: true
      t.string :comment, null: false
      t.float :rating
      t.timestamps
    end
  end
end
