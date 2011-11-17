require "bootstrap-helper/builders/modal"
module BootstrapHelper
  module Helpers
    module Modal
      def modal(options = {},&proc)
        ::BootstrapHelper::Builders::Modal.new(self,options,&proc)
      end
    end
  end
end