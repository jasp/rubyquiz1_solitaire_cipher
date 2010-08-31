class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

Given /^I have an encoder$/ do
  @encoder = Quiz1::Encoder.new(output)
end

When /^I enter "([^"]*)"$/ do |message|
  @encoder.encode(message)
end

Then /^I should see "([^"]*)"$/ do |encoded_message|
  output.message.should include(encoded_message)
end
