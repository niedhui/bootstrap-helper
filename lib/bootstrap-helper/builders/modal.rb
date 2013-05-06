# encoding: utf-8
module BootstrapHelper
  module Builders
    class Modal
      attr_accessor :template, :name, :items

      def initialize(template, options = {}, &proc)
        @template, @items = template,  []
        render(options, &proc)
      end

      def render(options, &proc)
        buffer = template.capture(self, &proc)
        template.concat(wrapper(options,buffer))
      end

      def wrapper(options,buffer)
        template.content_tag(:div, buffer,class: "modal hide fade",id: options.delete(:id))
      end

      def header(title)
        template.content_tag(:div, class: "modal-header") do
          (template.link_to "×","#",class: 'close', data: { dismiss: 'modal'} ) << template.content_tag(:h3,title)
        end
      end
      
      def body(options = {},&block)
        buffer = template.capture(self, &proc)
        template.content_tag(:div,buffer, class: "modal-body") 
      end
      
      def footer(options = {},&block)
        buffer = template.capture(self, &proc)
        template.content_tag(:div,buffer, class: "modal-footer") 
      end
    end
  end
end
