# frozen_string_literal: true

module TimesAndDatesHelper
  def humanize_datetime_tag(date_or_time, prerender: false)
    text = prerender ? l(date_or_time, format: :long) : ''
    datetime = date_or_time.iso8601

    tag.time text, datetime:, data: { controller: 'human-date' }, title: text
  rescue I18n::ArgumentError
    ''
  end
end
