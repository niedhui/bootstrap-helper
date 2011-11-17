module BootstrapHelper
  module Helpers
    module Link
      def modal_control_for(id,title,options ={})
        link_to title,'#',"data-controls-modal" => id, "data-backdrop"=> options.delete(:backdrop),
          "data-keyboard"=>options.delete(:keyboard),class: Array(options.delete(:class)) << "btn"
      end
      
      def primary_link_to(title,href,options ={})
        link_to title,href,{class: Array(options.delete(:class))  + ["primary","btn"] }.merge(options)
      end
    end
  end
end