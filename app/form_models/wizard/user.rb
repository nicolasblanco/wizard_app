module Wizard
  module User
    STEPS = %w(step1 step2 step3 step4).freeze

    class Base
      include ActiveModel::Model
      attr_accessor :user

      delegate *::User.attribute_names.map { |attr| [attr, "#{attr}="] }.flatten, to: :user

      def initialize(user_attributes)
        @user = ::User.new(user_attributes)
      end
    end

    class Step1 < Base
      validates :email, presence: true, format: { with: /@/ }
    end

    class Step2 < Step1
      validates :first_name, presence: true
      validates :last_name, presence: true
    end

    class Step3 < Step2
      validates :address_1, presence: true
      validates :zip_code, presence: true
      validates :city, presence: true
      validates :country, presence: true
    end

    class Step4 < Step3
      validates :phone_number, presence: true
    end
  end
end
