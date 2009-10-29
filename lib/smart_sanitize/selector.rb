module SmartSanitize
  class Selector

    def clean(text)
      dupe = text.dup
      clean!(text) || dupe
    end

    def clean_selector(selector)
      selector.strip!
      case selector
      when /,/ then clean_multi(selector)
      when / / then clean_complex(selector)
      when /^\./ then clean_class(selector)
      when /^#/ then clean_id(selector)
      else clean_element(selector)
      end
    end

    def clean!(selectors)
      apply_user_field clean_selector(selectors)
    end

    def apply_user_field(selector)
      if SmartSanitize.user_field
        "##{SmartSanitize.user_field} #{selector}".gsub("body", "")
      else
        selector
      end
    end

    def allowed?(selector)
      !clean_selector(selector).nil?
    end

    def clean_multi(selector)
      selector.split(",").map {|s| clean_selector(s)}.join(",")
    end

    def clean_complex(selector)
      selector.split(" ").map {|s| clean_selector(s)}.join(" ")
    end

    def clean_id(id)
      id unless SmartSanitize.restricted_ids.include?(id.gsub("#", "").strip)
    end

    def clean_class(clazz)
      clazz unless SmartSanitize.restricted_classes.include?(clazz.gsub(".", "").strip)
    end

    def clean_element(element)
      case element
      when /\./ then [clean_element(element.split('.')[0]), clean_class(element.split('.')[1])].join(".")
      else
        element if SmartSanitize.elements.include?(element.split(":").first.strip)
      end
    end

    class << self
      def clean(selector)
        sanitize = self.new
        sanitize.clean(selector)
      end

      def clean!(selector)
        sanitize = self.new
        sanitize.clean!(selector)
      end

      def allowed?(selector)
        sanitize = self.new
        sanitize.allowed?(selector)
      end
    end
  end
end