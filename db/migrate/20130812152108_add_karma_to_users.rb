class AddKarmaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :karma_points_sum, :integer

    add_index :users, :karma_points_sum, :order => :desc
  end
end
