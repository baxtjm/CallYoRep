Issue.create!([
  {topic: "planned_parenthood", readable_name: "Planned Parenthood"},
  {topic: "aca", readable_name: "Affordable Care Act"},
  {topic: "global warming", readable_name: "Global Warming"},
  {topic: "tax_transparency", readable_name: "Tax Transparency"},
  {topic: "internet_privacy", readable_name: "Internet Privacy"},
  {topic: "muslim_ban", readable_name: "Muslim Ban"}
])
Message.create!([
  {position: "pro", content: nil, issue_id: 1, audio_link: "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", stance: nil},
  {position: "anti", content: nil, issue_id: 1, audio_link: "https://handler.twilio.com/twiml/EH566a1c17a928489153b715ebe6236876", stance: nil},
  {position: "pro", content: nil, issue_id: 2, audio_link: "https://handler.twilio.com/twiml/EHa85396c0b5cfc3432628718362665408", stance: nil},
  {position: "anti", content: nil, issue_id: 2, audio_link: "https://handler.twilio.com/twiml/EH9115565d27a9881dde864c5965a73e89", stance: nil},
  {position: "exists", content: nil, issue_id: 3, audio_link: "https://handler.twilio.com/twiml/EH19fb7e6783f0e1138b25224bafdb3726", stance: nil},
  {position: "fake", content: nil, issue_id: 3, audio_link: "https://handler.twilio.com/twiml/EH5aca0b8094762febf18ac4b696f29504", stance: nil},
  {position: "anti", content: nil, issue_id: 4, audio_link: "https://handler.twilio.com/twiml/EHf88c1152c860878bcbee2b3bd887ccaa", stance: nil},
  {position: "pro", content: nil, issue_id: 4, audio_link: "https://handler.twilio.com/twiml/EHda664b265c6578e088ad8dd6b3c4ba02", stance: nil},
  {position: "pro", content: nil, issue_id: 5, audio_link: "https://handler.twilio.com/twiml/EH0705d3a7cd44deced1a97cdeec47b969", stance: nil},
  {position: "anti", content: nil, issue_id: 5, audio_link: "https://handler.twilio.com/twiml/EH0625a72f056e8851f2463173bc0edf3c", stance: nil},
  {position: "pro", content: nil, issue_id: 6, audio_link: "https://handler.twilio.com/twiml/EHe47d63142cc2f9878334c789ed48aeab", stance: nil},
  {position: "anti", content: nil, issue_id: 6, audio_link: "https://handler.twilio.com/twiml/EH958d265aeb31a9cb13155d092a4e0e50", stance: nil}
])
