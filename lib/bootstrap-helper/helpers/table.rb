require "bootstrap-helper/builders/table"
module BootstrapHelper
  module Helpers
    module Table
      def bt_table(options = {},&proc)
        ::BootstrapHelper::Builders::Table.new(self,options,&proc)
      end
      
    end
  end
end