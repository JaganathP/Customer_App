  require 'data_magic'
  require 'logger'
  require 'page-object'
  require 'require_all'
  require 'rspec'
  require 'rspec/expectations'
  require 'selenium-webdriver'
  require 'byebug'
  require 'parallel_tests'


  
  PageObject.default_element_wait = 10
  PageObject.default_page_wait = 60
  
  World(PageObject::PageFactory)
  
  require_all 'pages'
