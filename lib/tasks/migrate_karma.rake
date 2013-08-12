task :migrate_karma => :environment do
  User.find_each do |user|
    user.update_attribute(:karma_points_sum, user.total_karma)
  end
end