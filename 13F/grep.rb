irb(main):001:0> ["12", "Hello", "bye"].grep(/bye/)
=> ["bye"]
irb(main):002:0> ["12", "Hello", "bye"].map {| i | puts i if i.match(/bye/i)}
bye
=> [nil, nil, nil]
irb(main):003:0> ["12", "Hello", "bye"].select {| i | puts i if i.match(/bye/i)}
bye
=> []
