class CreateRails < ActiveRecord::Migration
  def change
    create_table :rails do |t|
      t.string :title
      t.string :body
      t.datetime :date

      t.timestamps
    end
  end
end
