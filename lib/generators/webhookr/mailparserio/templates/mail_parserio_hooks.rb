class MailParserioHooks

  def on_event(incoming)
    payload = incoming.payload
    puts 'mail parser on_event webhook:'
    puts payload
  end
  
end