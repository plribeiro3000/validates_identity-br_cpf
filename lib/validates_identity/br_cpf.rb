# frozen_string_literal: true

require 'validates_identity'
require_relative 'br_cpf/version'

class ValidatesIdentity
  module BrCpf
    autoload :Validator, 'validates_identity/br_cpf/validator'
  end
end

ValidatesIdentity.register_person_identity_type('BR_CPF', ValidatesIdentity::BrCpf::Validator)
ValidatesIdentity::ShouldaMatchers.register_person_allowed_values('BR_CPF', %w[897.546.112-20 67242509009])
ValidatesIdentity::ShouldaMatchers.register_person_disallowed_values('BR_CPF', %w[123456 897.546.112-30])
