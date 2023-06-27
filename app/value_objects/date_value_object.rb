# frozen_string_literal: true

# DateValueObject
#
# Example:
#  DateValueObject.new(Date.today).call
#
class DateValueObject
  attr_reader :date, :time_zone, :locale, :format

  # NameFormatValueObject new
  #
  # @param [Datetime] Datetime in UTC
  # @param [String] time_zone <default: Europe/Paris> Time zone of date
  # @param [String] format <default: date.formats.long> Format of date
  # @param [Symbol] locale: <default: :en> Localization of date
  def initialize(date, time_zone: nil, format: nil, locale: nil)
    @date = date
    @locale = locale
    @format = format || 'date.formats.long'
    @time_zone = time_zone || 'Europe/Paris'
  end

  # Return name formatted
  # @return [Datetime] formatted date with time zone with locale format
  def call
    ActiveSupport::TimeZone.find_tzinfo(time_zone).utc_to_local(date).strftime(locale_format)
  end

  private

  # i18n-tasks-use t('date.formats.long')
  def locale_format
    I18n.t(format, locale:)
  end
end
