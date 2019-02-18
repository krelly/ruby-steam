require 'nokogiri'

res = IO.read(__dir__ + '/res.html')
doc = Nokogiri::HTML(res)
confirmations = doc.css('[data-confid]').map do |el|
  descriptions = el.css('.mobileconf_list_entry_description>div').map(&:content)
  {
    id: el.attribute('data-confid').content,
    key: el.attribute('data-key').content,
    cancel: el.attribute('data-cancel').content,
    accept: el.attribute('data-accept').content,
    descriptions: descriptions
  }
end
confirmations.each(&method(:p))
