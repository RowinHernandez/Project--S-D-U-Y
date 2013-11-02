class AddColumPersonIdToNotices < ActiveRecord::Migration
  def change
    add_column :notices, :person_id, :integer
  end
end
