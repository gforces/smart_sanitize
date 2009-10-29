module SmartSanitize
  class Css

    def clean(text)
      dupe = text.dup
      clean!(text) || dupe
    end

    def clean!(text)
      text.scan(/(.*?)\{(.*?)\}/m).map {|selector, style| "#{SmartSanitize::Selector.clean(selector)} {#{clean_style(style)}}" if SmartSanitize::Selector.allowed?(selector)}.join("\n")
    end

    def clean_style(style)
      style.split(";").delete_if {|s| !(SmartSanitize.styles || []).include?(s.split(":").first.strip)}.map {|v| v.strip}.join(";")
    end

    class << self
      def clean(html)
        sanitize = self.new
        sanitize.clean(prepare(html))
      end

      def clean_style(html)
        sanitize = self.new
        sanitize.clean_style(prepare(html))
      end

      def clean!(html)
        sanitize = self.new
        sanitize.clean!(prepare(html))
      end

      private
      def prepare(text)
        # Mostly stolen from http://code.sixapart.com/svn/CSS-Cleaner/trunk/lib/CSS/Cleaner.pm
        text = "Error: invalid/disallowed characters in CSS" if text =~ /(\w\/\/)/    # a// comment immediately following a letter
        text = "Error: invalid/disallowed characters in CSS" if text =~ /(\w\/\/*\*)/ # a/* comment immediately following a letter
        text = "Error: invalid/disallowed characters in CSS" if text =~ /(\/\*\/)/            # /*/ --> hack attempt, IMO

        # Now, strip out any comments, and do some parsing.
        text.gsub!(/(\/\*.*?\*\/)/, "") # filter out any /* ... */
        text = text.split("\n").join("").gsub(/\s+/, " ").strip
        # No backslashes allowed
        evil = [
          /(\bdata:\b|eval|cookie|\bwindow\b|\bparent\b|\bthis\b)/i, # suspicious javascript-type words
          /behaviou?r|expression|moz-binding|@import|@charset|(java|vb)?script|[\<]|\\\w/i,
          /[\<>]/, # back slash, html tags,
          /[\x7f-\xff]/, # high bytes -- suspect
          /[\x00-\x08\x0B\x0C\x0E-\x1F]/, #low bytes -- suspect
          /&\#/, # bad charset
        ]
        evil.each { |e| text.gsub!(e, "") }
        return text
      end
    end

  end
end