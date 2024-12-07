require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    context '正常な時' do
      let(:user) { FactoryBot.build(:user) }

      it do
        result = user.valid?
        expect(result).to eq(true)
      end
    end

    context 'nameがblankの時' do
      let(:user) { FactoryBot.build(:user, name: '') }

      it do
        result = user.valid?
        expect(result).to eq(false)
      end
    end
  end
end