class DropSkillsAndSkillUsers < ActiveRecord::Migration
  def change
    drop_table :skills
    drop_table :skill_users
  end
end
