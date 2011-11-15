require "bootstrap-helper/builders/topbar"
module BootstrapHelper
  module Helpers
    module Topbar
      def topbar(options = {},&proc)
        ::BootstrapHelper::Builders::Topbar.new(self,options,&proc)
      end
    end
  end
end