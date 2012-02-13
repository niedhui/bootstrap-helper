require "bootstrap-helper/builders/table"
module BootstrapHelper
  module Helpers
    module Table
      def bt_table(collection , options = {},&proc)
        ::BootstrapHelper::Builders::Table.new(self,collection,options,&proc)
      end
      
    end
  end
end