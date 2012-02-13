# encoding: utf-8
# TODO: better doc, tr_class
module BootstrapHelper
  module Builders
    class Table
      attr_accessor :template
      delegate  :content_tag,          :to => :template

      def initialize(template,collection, options = {}, &proc)
        @template, @collection = template,  collection
        @tr_class = options.delete(:tr_class)
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
        content_tag :thead do
          reduce_collection(heads) {|head| content_tag :th, head}
        end
      end
      
      def tds(*columns)
        content_tag :tbody do
          reduce_collection(@collection) {|item| render_tr(item,columns) }
        end
      end
      
      def render_tr(item,columns)
        content_tag :tr ,class: (@tr_class.call(item) if @tr_class) do
          reduce_collection(columns) {|column|  render_td(item, column)}
        end
      end
      
      def render_td(item,column)
        td_content =  case column
        when Symbol
          item.send(column)
        when Proc
          column.call(item)
        end
        content_tag(:td,td_content)
      end
      
      def reduce_collection(collection,&block)
        collection.reduce("".html_safe) {|buffer,item| buffer << yield(item)}
      end
    end
  end
end