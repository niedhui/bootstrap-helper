module BootstrapHelper
  module Helpers
    autoload :Navbar,     'bootstrap-helper/helpers/navbar'
    autoload :Modal,     'bootstrap-helper/helpers/modal'
    autoload :Link,     'bootstrap-helper/helpers/link'
    include Navbar
    include Modal
    include Link
  end
end