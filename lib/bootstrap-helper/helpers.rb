module BootstrapHelper
  module Helpers
    autoload :Topbar,     'bootstrap-helper/helpers/topbar'
    autoload :Modal,     'bootstrap-helper/helpers/modal'
    autoload :Link,     'bootstrap-helper/helpers/link'
    include Topbar
    include Modal
    include Link
  end
end