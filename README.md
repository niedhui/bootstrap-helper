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

# modal
``` ruby
- modal id: "my_modal" do |m| 
  = m.header "修改备注"
  = m.body do
    %textarea#remark_field{style:"width: 95%"}
  = m.footer do
    = primary_link_to "确定","#"
```

# table
```ruby
  - bt_table users do |table|
    = table.ths "email","name"
    = table.tds :email, ->(user) { user.first_name+ user.last_name}
```

# buttons
```ruby
  - bt_button_group "Actions" do
    %li= link_to "hello",   hello_path
    %li= link_to "bye",     bye_path
    %li.divider
    %li= link_to "nihao"
```
