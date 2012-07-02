xml.instruct!
xml.guests do
  @guests.each do |guest|
    xml.guest do
      xml.name guest.name
      xml.email guest.email
      xml.checked guest.checked
    end
  end
end