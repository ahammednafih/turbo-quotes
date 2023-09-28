# frozen_string_literal: true

json.extract! quote, :id, :name, :created_at, :updated_at
json.url quote_url(quote, format: :json)
