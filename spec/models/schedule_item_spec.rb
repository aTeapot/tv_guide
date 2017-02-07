require 'rails_helper'

RSpec.describe ScheduleItem, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to :schedule }
    it { is_expected.to belong_to :show }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :schedule_id }
    it { is_expected.to validate_presence_of :show_id }
    it { is_expected.to validate_presence_of :air }
  end
end
