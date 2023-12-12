class CreateCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :collections do |t|
      t.datetime :time
      t.string :note_from_kiki
      t.string :message_from_alfred
      t.string :bags
      t.references :subscription, null: false, foreign_key: true
      t.boolean :is_done, null: false, default: false
      t.boolean :skip, null: false, default: false
      t.boolean :needs_bags, null: false, default: false

      t.timestamps
    end
  end
end
