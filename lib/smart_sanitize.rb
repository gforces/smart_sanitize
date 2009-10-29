#--
# Copyright (c) 2009 Marcin Ciunelis <maarcin.ciunelis@gforces.pl>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the 'Software'), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#++


gem 'hpricot', '~> 0.8.1'

require 'hpricot'
require 'smart_sanitize/html'
require 'smart_sanitize/css'
require 'smart_sanitize/selector'
require 'smart_sanitize/helper'

module SmartSanitize
  class << self
    attr_accessor :elements, :attributes, :styles, 
      :restricted_classes, :restricted_ids, :protocols, :allow_comments, :user_field

    def configure
      load_default_confing
      yield self
    end

    def load_default_confing
      {
        :elements => [],
        :attributes => [],
        :styles => [],
        :restricted_classes => [],
        :restricted_ids => [],
        :protocols => [],
        :allow_comments => false
      }.each {|k,v| self.send("#{k}=", v)}

    end
  end
end