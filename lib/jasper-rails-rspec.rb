require "jasper-rails/version"
require "rails"
require "rspec"
require "pdf/inspector"

RSpec::Matchers.define :contain do |string|
  match do |response|
    @pdf = PDF::Inspector::Text::analyze(response.body)
    @pdf.strings.include? string
  end

  failure_message_for_should do |response|
    "expected that the PDF text would contain #{expected}. It only contains: #{@pdf.strings.to_s}"
  end

  failure_message_for_should_not do |response|
    "expected that the PDF text would not contain #{expected}. But it does: #{@pdf.strings.to_s}"
  end
end
