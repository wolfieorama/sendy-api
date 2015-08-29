# encoding: UTF-8
require 'rubygems' if RUBY_VERSION < '1.9'
require 'rest_client'

values = '{
  "command": "complete",
  "data": {
    "api_key": "w38CMeQCB88sUkGqbTMm",
    "api_username": "personal",
    "order_no": "AA23MS878",
    "delivery_details": {
      "pick_up_date": "2016-04-15 12:12:12",
      "collect_payment": {
        "status": false,
        "pay_method": 0,
        "amount": 10
      },
      "return": false,
      "note": " Sample note",
      "note_status": true
    }
  }
}'

headers = {
  :content_type => 'application/json'
}

response = RestClient.post 'https://test.sendyit.com/v1/#complete', values, headers
puts response
