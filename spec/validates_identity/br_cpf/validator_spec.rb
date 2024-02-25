# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ValidatesIdentity::BrCpf::Validator do
  it 'rejects 345.65.67.3' do
    expect(described_class.new('345.65.67.3')).not_to be_valid
  end

  it 'rejects 567.765-87698' do
    expect(described_class.new('567.765-87698')).not_to be_valid
  end

  it 'rejects 345456-654-01' do
    expect(described_class.new('345456-654-01')).not_to be_valid
  end

  it 'rejects 123456' do
    expect(described_class.new('123456')).not_to be_valid
  end

  it 'rejects 23342345699' do
    expect(described_class.new('23342345699')).not_to be_valid
  end

  it 'rejects 34.543.567-98' do
    expect(described_class.new('34.543.567-98')).not_to be_valid
  end

  it 'rejects 456.676456-87' do
    expect(described_class.new('456.676456-87')).not_to be_valid
  end

  it 'rejects 333333333-33' do
    expect(described_class.new('333333333-33')).not_to be_valid
  end

  it 'rejects 00000000000' do
    expect(described_class.new('00000000000')).not_to be_valid
  end

  it 'rejects 000.000.000-00' do
    expect(described_class.new('000.000.000-00')).not_to be_valid
  end

  it 'rejects 111.444.777-3500' do
    expect(described_class.new('111.444.777-3500')).not_to be_valid
  end

  it 'rejects 11144477735AB' do
    expect(described_class.new('11144477735AB')).not_to be_valid
  end

  it 'accepts blank string' do
    expect(described_class.new('')).to be_valid
  end

  it 'accepts nil' do
    expect(described_class.new(nil)).to be_valid
  end

  it 'accepts 111.444.777-35' do
    expect(described_class.new('111.444.777-35')).to be_valid
  end

  it 'accepts 11144477735' do
    expect(described_class.new('11144477735')).to be_valid
  end

  it 'accepts 111.444777-35' do
    expect(described_class.new('111.444777-35')).to be_valid
  end

  it 'accepts 111444.777-35' do
    expect(described_class.new('111444.777-35')).to be_valid
  end

  it 'accepts 111.444.77735' do
    expect(described_class.new('111.444.77735')).to be_valid
  end
end
