class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :institution_name
      t.datetime :started_on
      t.datetime :ended_on
      t.string :thesis_title
      t.string :title
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
