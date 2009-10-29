module ActionView
  module Helpers
    module SanitizeHelper
      def smart_sanitize(html, user_field = nil)
        SmartSanitize.user_field = user_field
        SmartSanitize::Html.clean(html)
      end
    end
  end
end