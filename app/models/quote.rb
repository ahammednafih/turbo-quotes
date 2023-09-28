# frozen_string_literal: true

class Quote < ApplicationRecord
  scope :ordered, -> { order(created_at: :desc) }
  belongs_to :company, default: -> { Current.comapny }

  validates :name, presence: true

  broadcasts_to ->(quote) { [quote.company, "quotes"] }, inserts_by: :prepend
end
