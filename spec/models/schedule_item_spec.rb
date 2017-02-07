require 'rails_helper'

RSpec.describe ScheduleItem, type: :model do
  describe '#schedule' do
    it { is_expected.to belong_to :schedule }
  end

  describe '#show' do
    it { is_expected.to belong_to :show }
  end

  describe '#air' do
    it { is_expected.to validate_presence_of :air }
  end

  describe 'foreign keys' do
    it { is_expected.to validate_presence_of :schedule_id }
    it { is_expected.to validate_presence_of :show_id }
  end
end
