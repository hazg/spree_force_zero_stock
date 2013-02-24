Spree force zero stock
======================

Force zero stock products displaying by adding url parameter.


Example
=======

    http://host/?show_zero_stock=true
or
    http://host/t/taxon?show_zero_stock=true    

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2013 [name of extension creator], released under the New BSD License
