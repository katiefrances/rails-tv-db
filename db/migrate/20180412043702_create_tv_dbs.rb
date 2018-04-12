class CreateTvDbs < ActiveRecord::Migration[5.2]
  def change
    create_table :tv_dbs do |t|
      t.string :name
      t.string :desc
      t.integer :number_of_episodes
      t.string :up_to_date

      t.timestamps
    end
  end
end
