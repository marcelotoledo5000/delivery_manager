# frozen_string_literal: true

FactoryBot.define do
  factory :transporter do
    corporate_name { Faker::Company.name }
    brand_name { Faker::Company.industry }
    domain { Faker::Internet.domain_name }
    registration_number { Faker::Company.brazilian_company_number(formatted: true) }
    full_address { Faker::Address.full_address }
  end
end
