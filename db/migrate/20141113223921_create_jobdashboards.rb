class CreateJobdashboards < ActiveRecord::Migration
  def change
    create_table :jobdashboards do |t|
      t.integer :job_id
      t.string :job_comment

      t.timestamps
    end
  end
end
