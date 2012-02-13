#  bt_table do |table|
#    table.ths [:]
#
#
#
#
#

module BootstrapHelper
  module Builders
    class Table
      attr_accessor :template, :name, :items
      delegate  :content_tag,          :to => :template

      def initialize(template, options = {}, &proc)
        @template, @items = template,  []
        render(options, &proc)
      end
      
      def render(options, &proc)
        buffer = template.capture(self, &proc)
        template.concat wrapper(options,buffer)
      end

      def wrapper(options ,buffer)
        content_tag :table,buffer,class: 'table'
      end
      
      def ths(*heads)
        content_tag(:thead) do
          "".html_safe.tap do |content|
            heads.each {|th| content << (content_tag :th, th)}
          end
        end
      end
      

    end
  end
end