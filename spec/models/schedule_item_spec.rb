require 'rails_helper'

RSpec.describe ScheduleItem, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to :schedule }
    it { is_expected.to belong_to :show }
  end

  describe 'validations' do
    let(:options) { {} }
    subject(:item) { build(:schedule_item, options) }

    it { is_expected.to validate_presence_of :air }

    context 'with no schedule' do
      let(:options) { { schedule: nil } }
      it { is_expected.not_to be_valid }
    end

    context 'with no show' do
      let(:options) { { show: nil } }
      it { is_expected.not_to be_valid }
    end
  end
end
