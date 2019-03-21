module PasswordValidator
  extend ActiveSupport::Concern
  include ActiveModel::Validations
  # validate do |comment|
  #    comment.validate_password
  # end
    def validate_password
      if password != confirm_password
        errors.add(:base, 'Password and confirm password are not same')
      end
    end
end
