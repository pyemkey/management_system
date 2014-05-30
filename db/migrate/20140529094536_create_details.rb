class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.belongs_to :user, index: true
      t.datetime :birthday
      t.integer :gender, default: 0
      t.integer :marital_status, default: 0

      t.timestamps
    end
  end
end
