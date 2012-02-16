require "bootstrap-helper/builders/buttons"
module BootstrapHelper
  module Helpers
    module Buttons
      def bt_button_group(title , options = {},&proc)
        ::BootstrapHelper::Builders::Buttons.new(self,title,options,&proc)
      end
      
    end
  end
end
