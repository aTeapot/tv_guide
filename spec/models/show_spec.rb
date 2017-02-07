require 'rails_helper'

RSpec.describe Show, type: :model do
  describe '#name' do
    it { is_expected.to validate_presence_of :name }
  end

  describe '#category' do
    it { is_expected.to belong_to :category }
  end
end
