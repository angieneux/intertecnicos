# frozen_string_literal: true

module ApplicationHelper
  def format_price(price)
    ActiveSupport::NumberHelper.number_to_currency(price, unit: '$', precision: 0)
  end
end
