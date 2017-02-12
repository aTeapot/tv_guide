namespace :db do
  desc 'Fill a database with some animals'
  task destroy_all: :environment do
    Category.destroy_all
    Show.destroy_all     # destroys ScheduleItems
    Channel.destroy_all  # destroys Schedules
  end
end
