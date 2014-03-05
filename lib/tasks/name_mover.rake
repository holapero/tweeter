namespace :name_mover do
  desc "move_name_from_user_to_profile"
  task move_name_from_user_to_profile: :environment do
    User.all.each do |user|
      profile = Profile.create(name: user.name)
      profile.user_id = user.id
      profile.save
    end
  end
end
