require "bootstrap-helper/builders/table"
module BootstrapHelper
  module Helpers
    module Table
      def bt_table(collection , options = {},&proc)
        ::BootstrapHelper::Builders::Table.new(self,collection,options,&proc)
      end
      
      def bt_bordered_table(collection , options = {},&proc)
        bt_table(collection , options.merge(border:true),&proc)
      end
      
      def bt_bordered_striped_table(collection , options = {},&proc)
        bt_table(collection , options.merge(border:true,striped: true),&proc)
      end
    end
  end
end