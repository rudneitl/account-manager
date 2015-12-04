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
              concat(content_tag(:span, '&times;'.html_safe, class: 'ls-dismiss', 'data-ls-module' => 'dismiss'))
              concat(
                content_tag(:p) do
                  content_tag(:span, msg, class: 'ls-ico-chevron-right')
                end
              )
            end
          )
        end
      end
    end unless flash.empty?
  end

  def class_error(model, attribute)
    return unless model && model.errors
    'ls-error' if model.errors.key? attribute.to_sym
  end

  def show_message_error(model, key)
    build_tag_message_error model, key if model.errors.key? key.to_sym
  end

  def build_tag_message_error(model, key)
    content_tag(:div) do
      model.errors[key.to_sym].all? do |x|
        concat(
          content_tag(:p, class: 'ls-help-message ls-no-margin') do
            concat(content_tag(:small, x))
          end
        )
      end
    end
  end
end
