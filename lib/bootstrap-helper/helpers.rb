module BootstrapHelper
  module Helpers
    autoload :Navbar,     'bootstrap-helper/helpers/navbar'
    autoload :Modal,     'bootstrap-helper/helpers/modal'
    autoload :Link,     'bootstrap-helper/helpers/link'
    autoload :Table,     'bootstrap-helper/helpers/table'
    include Navbar
    include Table
    include Modal
    include Link
  end
end