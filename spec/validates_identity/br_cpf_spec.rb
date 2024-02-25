# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ValidatesIdentity::BrCpf do
  let(:user) { User.new }

  context 'with a valid value' do
    context 'without formatting' do
      before do
        user.identity = '11144477735'
        user.identity_type = 'BR_CPF'
        user.valid?
      end

      it 'leaves the value as it is' do
        expect(user.identity).to eq('11144477735')
      end
    end

    context 'with formatting' do
      before do
        user.formatted_identity = '11144477735'
        user.identity_type = 'BR_CPF'
        user.valid?
      end

      it 'formats the value' do
        expect(user.formatted_identity).to eq('111.444.777-35')
      end
    end
  end

  context 'with an invalid value' do
    before do
      user.identity = '123456'
      user.identity_type = 'BR_CPF'
      user.valid?
    end

    it 'leaves the original value' do
      expect(user.identity).to eq('123456')
    end
  end
end
