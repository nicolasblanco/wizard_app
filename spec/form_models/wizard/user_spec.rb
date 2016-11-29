require 'rails_helper'

RSpec.describe Wizard::User::Base, type: :model do
  subject { Wizard::User::Base.new({ first_name: 'foo', last_name: 'bar' }) }

  describe '#user' do
    it 'returns the User instance' do
      expect(subject.user).to be_a(User)
    end
  end

  describe 'delegate user attributes' do
    it 'delegates the user attributes to the user instance' do
      subject.first_name = 'Foo'
      subject.last_name = 'Bar'
      expect(subject.user.first_name).to eq('Foo')
      expect(subject.user.last_name).to eq('Bar')
    end
  end
end

RSpec.describe Wizard::User::Step1, type: :model do
  subject { Wizard::User::Step1.new({ first_name: 'foo', last_name: 'bar' }) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to allow_value('foo@bar.com').for(:email) }
  it { is_expected.not_to allow_value('foobar.com').for(:email) }
end

RSpec.describe Wizard::User::Step2, type: :model do
  subject { Wizard::User::Step2.new({ first_name: 'foo', last_name: 'bar' }) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to allow_value('foo@bar.com').for(:email) }
  it { is_expected.not_to allow_value('foobar.com').for(:email) }
  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
end

RSpec.describe Wizard::User::Step3, type: :model do
  subject { Wizard::User::Step3.new({ first_name: 'foo', last_name: 'bar' }) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to allow_value('foo@bar.com').for(:email) }
  it { is_expected.not_to allow_value('foobar.com').for(:email) }
  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:address_1) }
  it { is_expected.to validate_presence_of(:zip_code) }
  it { is_expected.to validate_presence_of(:country) }
end

RSpec.describe Wizard::User::Step4, type: :model do
  subject { Wizard::User::Step4.new({ first_name: 'foo', last_name: 'bar' }) }

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
