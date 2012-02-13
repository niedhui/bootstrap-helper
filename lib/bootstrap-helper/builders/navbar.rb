module BootstrapHelper
  module Builders
    class Navbar
      attr_accessor :template, :name, :items

      def initialize(template, options = {}, &proc)
        @template, @items = template,  []
        render(options, &proc)
      end

      def render(options, &proc)
        buffer = template.capture(self, &proc)
        template.concat(wrapper(options,buffer))
      end

      def wrapper(options ,buffer)
        navbar_class = ["navbar"]
        navbar_class << "navbar-fixed-top" if options[:top]
        template.content_tag(:div, class: navbar_class, "data-dropdown" => "dropdown") do
          template.content_tag(:div, class: "navbar-inner") do
            template.content_tag(:div, buffer,class: "container")
          end
        end
      end

      def brand_name(name,link = "#",options = {})
        template.link_to name, link, class: 'brand'
      end

      def nav(options = {},&block)
        buffer = template.capture(self, &proc)
        template.content_tag(:ul,buffer, class: "nav") 
      end

      def second_nav(options = {},&block)
        buffer = template.capture(self, &proc)
        template.content_tag(:ul,buffer, class: ["nav","pull-right"])
      end

      def dropdown(title,options = {},&proc)
        buffer = template.capture(self, &proc)
        template.content_tag(:li,class: 'dropdown') do
          link = template.link_to  "#",class: 'dropdown-toggle',"data-toggle" => "dropdown" do
            title.html_safe + template.content_tag(:b,"",class: 'caret')
          end
          link << template.content_tag(:ul,buffer, class: "dropdown-menu")
        end
      end

      def item(title,link,options = {})
        template.content_tag(:li,template.link_to(title,link))
      end

    end
  end
end

