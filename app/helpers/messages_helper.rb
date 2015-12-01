module MessagesHelper
  ALERT_TYPES = [:success, :info, :warning, :danger] unless const_defined?(:ALERT_TYPES)

  def flash_messages
    types = { notice: :success, alert: :warning, error: :danger }

    content_tag(:div) do
      flash.each do |type, message|
        next if message.blank?
        type = types[type.to_sym]
        next unless ALERT_TYPES.include?(type)
        Array(message).each do |msg|
          concat(
            content_tag(:div, class: "ls-alert-#{type} ls-dismissable") do
              concat(content_tag(:span, '&times;'.html_safe, class: 'ls-dismiss',  'data-ls-module' => 'dismiss'))
              concat(
                content_tag(:p) do
                  content_tag(:span, msg, class: 'ls-ico-chevron-right')
                end
              )
            end
          )
        end
      end
    end
  end
end
