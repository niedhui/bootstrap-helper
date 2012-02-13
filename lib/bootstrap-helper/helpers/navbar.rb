require "bootstrap-helper/builders/navbar"
module BootstrapHelper
  module Helpers
    module Navbar
      def navbar(options = {},&proc)
        ::BootstrapHelper::Builders::Navbar.new(self,options,&proc)
      end
      
      def topbar(options = {}, &proc)
        ::BootstrapHelper::Builders::Navbar.new(self,options.merge(top: true),&proc)
      end
    end
  end
end