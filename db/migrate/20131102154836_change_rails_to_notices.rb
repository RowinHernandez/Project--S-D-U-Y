class ChangeRailsToNotices < ActiveRecord::Migration
  def change
    rename_table :rails, :notices
  end
end
