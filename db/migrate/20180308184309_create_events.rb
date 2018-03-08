class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :business, foreign_key: true
      t.string :title
      t.string :address
      t.string :city
      t.string :state
      t.datetime :start
      t.string :description
      t.string :code
      t.string :buy_link
      t.string :business_page_link
      t.boolean :canceled

      t.timestamps
    end
  end
end