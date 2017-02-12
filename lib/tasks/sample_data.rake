namespace :db do
  desc 'Fill a database with some animals'
  task sample: :environment do
    create_categories
    create_shows
    create_channels_and_schedules
    create_schedule_items
  end
end

def create_categories
  puts 'Creating categories...'
  names =
    %w(
      Comedy Sports Music Film Soap Kids Drama Sci-Fi Documentary Motor Horror
    )
  names.each { |name| Category.create!(name: name) }
end

def create_shows
  puts 'Creating shows...'
  30.times do
    attrs = {
      name: Faker::Book.title,
      description: (rand < 0.7 ? Faker::Lorem.sentence : nil),
      category: (rand < 0.8 ? Category.all.sample : nil)
    }
    Show.create!(attrs)
  end
end

def create_channels_and_schedules
  puts 'Creating channels and schedules...'
  names = %w(FOX BBC CNN)
  names.each do |name|
    Channel.create!(name: name, schedule: Schedule.new)
  end
end

def create_schedule_items
  puts 'Creating schedule items...'
  Schedule.all.each do |schedule|
    on_datetimes do |datetime|
      attrs = {
        air: datetime,
        show: Show.all.sample,
        schedule: schedule
      }
      ScheduleItem.create!(attrs)
    end
  end
end

def on_datetimes
  (-1..3).each do |day|
    date = day.days.from_now.at_beginning_of_hour
    (0...24).to_a.sample(5).each do |hour|
      mins = rand(5) * 10
      datetime = date + hour.hours + mins.minutes
      yield datetime
    end
  end
end
