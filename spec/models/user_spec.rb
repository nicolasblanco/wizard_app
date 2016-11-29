require 'rails_helper'

RSpec.describe User do
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to allow_value('foo@bar.com').for(:email) }
  it { is_expected.not_to allow_value('foobar.com').for(:email) }
  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:address_1) }
  it { is_expected.to validate_presence_of(:zip_code) }
  it { is_expected.to validate_presence_of(:country) }
  it { is_expected.to validate_presence_of(:phone_number) }
end
