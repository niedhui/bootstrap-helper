# Rails 3.1
Include BootstrapHelper in Gemfile:

``` ruby
gem 'bootstrap-helper',git: 'git://github.com/niedhui/bootstrap-helper.git'
```

# topbar(Navigation)
``` ruby
- topbar do |bar|
  = bar.brand_name "YourBrandName",root_path
  = bar.nav do
    = bar.item 'label1',               "/url/url"
    = bar.dropdown "dropdown_menu" do
      = bar.item 'label2',              "/url2/url2"
      = bar.item 'label3',              "/url3/url3"
  = bar.second_nav do     
    = bar.item 'label4',               "/url4/url4"
```