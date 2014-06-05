class CreateSkillUsers < ActiveRecord::Migration
  def change
    create_table :skill_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :skill, index: true

      t.timestamps
    end
  end
end
