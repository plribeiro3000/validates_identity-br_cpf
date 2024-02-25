# frozen_string_literal: true

require 'validates_identity'
require_relative 'br_cpf/version'

class ValidatesIdentity
  module BrCpf
    autoload :Validator, 'validates_identity/br_cpf/validator'
  end
end

ValidatesIdentity.register_identity_type('BR_CPF', ValidatesIdentity::BrCpf::Validator)
