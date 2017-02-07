require 'rails_helper'

RSpec.describe Schedule, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to :channel }
    it { is_expected.to have_many(:schedule_items).dependent(:destroy) }
    it { is_expected.to have_many(:shows).through(:schedule_items) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:channel_id) }

    context 'when channel already has a schedule' do
      let(:channel) { create(:channel) }
      let(:error_msg) { 'Validation failed: Channel has already been taken' }
      subject { -> { create(:schedule, channel: channel) } }
      before { subject.call }
      it 'does not allow to create another' do
        expect { subject.call }.to raise_error(ActiveRecord::RecordInvalid, error_msg)
      end
    end
  end
end
