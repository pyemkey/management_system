class CreateInterestUsers < ActiveRecord::Migration
  def change
    create_table :interest_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :interest, index: true

      t.timestamps
    end
  end
end
