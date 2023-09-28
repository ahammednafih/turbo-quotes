# frozen_string_literal: true

#
# Uncomment this and change the path if necessary to include your own
# components.
# See https://github.com/heartcombo/simple_form#custom-components to know
# more about custom components.
# Dir[Rails.root.join('lib/components/**/*.rb')].each { |f| require f }
#
# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  # Default configuration
  config.generate_additional_classes_for = []
  config.default_wrapper = :default
  config.button_class = "bg-indigo-500 text-white p-2 rounded-sm hover:bg-indigo-600 hover:shadow-sm"
  config.label_text = ->(label, _, _) { label }
  config.error_notification_tag = :div
  config.error_notification_class = "error_notification"
  config.browser_validations = false
  config.boolean_style = :nested
  config.boolean_label_class = "md:w-2/3 block text-gray-500 font-bold"
end
