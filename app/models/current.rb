# frozen_string_literal: true

class Current < ActiveSupport::CurrentAttributes
  attribute :company, :user

  def user=(user)
    super

    self.company = user.company
  end
end
