 class CreateUserEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :user_events do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.boolean :going, default: false
      t.boolean :saved, default: false

      t.timestamps
    end
  end
end