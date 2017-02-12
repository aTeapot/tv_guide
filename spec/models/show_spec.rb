require 'rails_helper'

RSpec.describe Show, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to :category }
    it { is_expected.to have_many(:schedule_items).dependent(:destroy) }
    it { is_expected.to have_many(:schedules).through(:schedule_items) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }

    context 'without category' do
      subject(:show) { build(:show, category: nil) }
      it { is_expected.to be_valid }
    end
  end
end
