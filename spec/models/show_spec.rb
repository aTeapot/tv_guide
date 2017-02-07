require 'rails_helper'

RSpec.describe Show, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to :category }
    it { is_expected.to have_many(:schedule_items).dependent(:destroy) }
    it { is_expected.to have_many(:schedules).through(:schedule_items) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
  end
end
