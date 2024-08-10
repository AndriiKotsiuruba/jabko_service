# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string           default(""), not null
#  last_name              :string           default(""), not null
#  locale                 :string           default("en"), not null
#  phone_number           :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :integer          default("customer"), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE WHERE ((email)::text <> ''::text)
#  index_users_on_phone_number          (phone_number) UNIQUE WHERE ((phone_number)::text <> ''::text)
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
FactoryBot.define do
  factory :user do
    phone_number          { Faker::PhoneNumber.phone_number_with_country_code }
    first_name            { Faker::Name.first_name }
    last_name             { Faker::Name.last_name  }
    email                 { Faker::Internet.unique.email }
    password              { 'Password1' }
    password_confirmation { 'Password1' }
  end
end
