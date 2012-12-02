I looked into this from Ilya's blog entry: http://www.igvita.com/2009/06/29/http-pubsub-webhooks-pubsubhubbub/

It's a 100 line pubsub webhook implementation

## how to use

Open up a terminal frame with 3 windows.

In first window, start the pubsub service

    be rackup -p 4567
    
In second window, start test end-point

    be ruby ./test-handler.rb -p 6666
    
In third window run the demo

    be ruby ./postbin.rb http://0.0.0.0:6666/test-handler
    
    # or alternatively:
    
    be ruby ./ilya_test.rb http://0.0.0.0:6666/test-handler
