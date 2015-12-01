class ExpenseDecorator < ApplicationDecorator
  include Draper::ViewHelpers
  delegate_all

  def category_name
    return category.name unless category.nil?
    '-'
  end

  def source_name
    return source.source.name unless source.source.nil?
    '-'
  end

  def period_name
    return period.name unless period.nil?
    '-'
  end
end
