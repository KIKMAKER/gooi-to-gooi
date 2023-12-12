class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.integer :collection_day
      t.integer :plan
      t.date :start_date
      t.integer :duration
      t.string :subburb
      t.boolean :is_paused, null: false, default: false
      t.references :user, null: false, foreign_key: true
      t.string :customer_id
      t.date :holiday_start
      t.date :holiday_end

      t.timestamps
    end
  end
end
