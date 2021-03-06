class CurrencyValidator < ActiveModel::Validator
  def validate(record)
    validate_positive(record) if record.currency_value.present?
  end

  protected

  def validate_positive(record)
    record.errors.add(:currency_value) if record.currency_value < 0
  end
end

