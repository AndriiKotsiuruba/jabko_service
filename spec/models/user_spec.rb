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
require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    subject { build(:user) }

    it { is_expected.to validate_uniqueness_of(:email).scoped_to(:role).case_insensitive.allow_blank }
    it { is_expected.to validate_uniqueness_of(:phone_number).scoped_to(:role).case_insensitive.allow_blank }

    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end
end
