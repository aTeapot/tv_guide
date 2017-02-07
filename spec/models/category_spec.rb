require 'rails_helper'

RSpec.describe Category, type: :model do
  describe '#name' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_uniqueness_of :name }
  end

  describe '#show' do
    it { is_expected.to have_many(:shows).dependent(:nullify) }
  end
end
