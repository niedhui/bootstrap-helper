# encoding: utf-8
# TODO: better doc, tr_class
module BootstrapHelper
  module Builders
    class Buttons
      attr_accessor :template
      delegate  :content_tag, :link_to,     :to => :template

      def initialize(template,title, options = {}, &proc)
        @template, @title = template,  title
        render(options, &proc)
      end
      
      def render(options, &proc)
        buffer = template.capture(self, &proc)
        template.concat wrapper(options,buffer)
      end

      def wrapper(options ,buffer)
        content_tag :div, class: 'btn-group' do
          sub_buffer = link_to "#",class: 'btn dropdown-toggle','data-toggle' => "dropdown" do
            @title.html_safe << content_tag(:span,"",class: "caret")
          end
          sub_buffer << content_tag(:ul,buffer,class: "dropdown-menu")
        end
      end
    end
  end
end
      
