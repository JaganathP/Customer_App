class HomePage
  include PageObject  
  
  page_url ENV['URL']
  
    
  #---------------------Common Elements-------------------------#
  
  h1            :welcome_message,              :xpath => '//h1[contains(text(),\'Welcome to Customer App\')]'
  text_field    :username,                     :xpath => '//input[@id=\'name\']'
  button        :submit,                       :xpath => '//input[@value=\'Submit\']'
  b             :dashboard_username,           :xpath => '//*[@id=\'root\']/div/div/div/p/b[1]'
  b             :dashboard_timestamp,          :xpath => '//*[@id=\'root\']/div/div/div/p/b[2]'
  a             :americas,                     :xpath => '//a[contains(text(),\'Americas Inc.\')]'
  a             :caribian_airlnis,             :xpath => '//a[contains(text(),\'Caribian Airlnis\')]'
  a             :macrosoft,                    :xpath => '//a[contains(text(),\'MacroSoft\')]'
  a             :united_brands,                :xpath => '//a[contains(text(),\'United Brands\')]'
  a             :bananas_corp,                 :xpath => '//a[contains(text(),\'Bananas Corp\')]'
  a             :xpto,                         :xpath => '//a[contains(text(),\'XPTO.com\')]'
  button        :back_to_list,                 :xpath => '//input[@type=\'button\']'


  def verify_customer_page
    if on(HomePage).back_to_list? == true
      on(HomePage).back_to_list
      puts "#{customer} customer page loaded successfully"
    else 
      on(HomePage).refresh
      puts "#{customer} customer page is breaking"
    end 
  end

   
end

