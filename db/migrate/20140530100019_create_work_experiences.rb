class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.belongs_to :user, index: true
      t.string :company_name
      t.datetime :start_date
      t.datetime :end_date
      t.string :position
      t.string :location

      t.timestamps
    end
  end
end
