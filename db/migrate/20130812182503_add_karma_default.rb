class AddKarmaDefault < ActiveRecord::Migration
  def change
    change_column :users, :karma_points_sum, :integer, default: 0
  end
end
