class RenameTitleToDegreeInEducation < ActiveRecord::Migration
  def change
    rename_column :educations, :title, :degree
  end
end
