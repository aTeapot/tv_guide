require 'rails_helper'

RSpec.describe Channel, type: :model do
  describe 'associations' do
    it { is_expected.to have_one(:schedule).dependent(:destroy) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
