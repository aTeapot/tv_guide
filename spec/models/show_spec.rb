require 'rails_helper'

RSpec.describe Show, type: :model do
  describe '#name' do
    it { is_expected.to validate_presence_of :name }
  end

  describe '#category' do
    it { is_expected.to belong_to :category }
  end

  describe '#schedule_items' do
    it { is_expected.to have_many(:schedule_items).dependent(:destroy) }
  end

  describe '#schedules' do
    it { is_expected.to have_many(:schedules).through(:schedule_items) }
  end
end
