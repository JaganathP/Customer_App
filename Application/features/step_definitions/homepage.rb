Given("I launch the URL") do
  visit('HomePage')
  on(HomePage).welcome_message? 
  puts "Successfully landed on the Home Page"
end

Then("I enter {string}") do |string| 
  @username = string
  on(HomePage).username_element.when_present.click
  on(HomePage).username = string
  string = $username
  puts "User entered username #{string}"
end 

Then("I click on Submit button") do
  on(HomePage).submit_element.when_present.click
end

Then("I should land on the Dashboard page") do
  on(HomePage).dashboard_username? 
  on(HomePage).dashboard_timestamp?
  puts "Successfully landed on the Dashboard Page"
end

Then("I validate entered {string} on the Dashboard page") do |string| 
  dashboard_username = on(HomePage).dashboard_username
  dashboard_username = on(HomePage).dashboard_username
  on(HomePage).dashboard_username == string
  puts "Entered username #{string} and the dashboard username #{dashboard_username}"
end

Then("I validate the date stamp on the Dashboard page") do
  on(HomePage).dashboard_timestamp? 
  dashboard_timestamp = on(HomePage).dashboard_timestamp
  time = Time.new
  @timestamp = time.strftime("%a %b %d %Y")
  on(HomePage).dashboard_timestamp == @timestamp
  puts "Current date #{@timestamp} and the dashboard date #{dashboard_timestamp}"
end

Then(/^I validate the (Americas Inc|Caribian Airlnis|MacroSoft|United Brands|Bananas Corp|XPTO.com) customer details page$/) do |customer|
 case  customer
  when "Americas Inc"
    on(HomePage).americas?
    on(HomePage).americas
    if on(HomePage).back_to_list? == true
      on(HomePage).back_to_list
      puts "#{customer} customer page loaded successfully"
    else 
      on(HomePage).refresh
      puts "#{customer} customer page is breaking"
    end 
  when "Caribian Airlnis"
    on(HomePage).caribian_airlnis?
    on(HomePage).caribian_airlnis
    if on(HomePage).back_to_list? == true
      on(HomePage).back_to_list
      puts "#{customer} customer page loaded successfully"
    else 
      on(HomePage).refresh
      on(HomePage).username
      on(HomePage).username = @username
      step "I click on Submit button" 
      puts "#{customer} customer page is breaking"
    end 
  when "MacroSoft"
    on(HomePage).macrosoft?
    on(HomePage).macrosoft
    if on(HomePage).back_to_list? == true
      on(HomePage).back_to_list
      puts "#{customer} customer page loaded successfully"
    else 
      on(HomePage).refresh
      on(HomePage).username
      on(HomePage).username = @username
      step "I click on Submit button" 
      puts "#{customer} customer page is breaking"
    end 
  when "United Brands"
    on(HomePage).united_brands?
    on(HomePage).united_brands
    if on(HomePage).back_to_list? == true
      on(HomePage).back_to_list
      puts "#{customer} customer page loaded successfully"
    else 
      on(HomePage).refresh
      on(HomePage).username
      on(HomePage).username = @username
      step "I click on Submit button" 
      puts "#{customer} customer page is breaking"
    end 
  when "Bananas Corp"
    on(HomePage).bananas_corp?
    on(HomePage).bananas_corp
    if on(HomePage).back_to_list? == true
      on(HomePage).back_to_list
      puts "#{customer} customer page loaded successfully"
    else 
      on(HomePage).refresh
      on(HomePage).username
      on(HomePage).username = @username
      step "I click on Submit button" 
      puts "#{customer} customer page is breaking"
    end 
  when "XPTO.com"
    on(HomePage).xpto?
    on(HomePage).xpto
    if on(HomePage).back_to_list? == true
      on(HomePage).back_to_list
      puts "#{customer} customer page loaded successfully"
    else 
      on(HomePage).refresh
      on(HomePage).username
      on(HomePage).username = @username
      step "I click on Submit button" 
      puts "#{customer} customer page is breaking"
    end 
 else
  raise "Customer Name is the list got updated"
 end
end
  
    
 