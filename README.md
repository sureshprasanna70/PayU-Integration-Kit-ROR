# PayU-Integration-Kit-ROR

PayU-Integration-Kit-ROR is used in most modern Ruby applications which deal with financial transactions. It was developed for usage in Ruby on Rails web applications and integrates seamlessly as a plugin but it also works excellently as a stand alone library. (See [ActiveMerchant](http://activemerchant.org/))

This library provides support for payment gateway PayU by iBiBo Group. (See [PayU.in](http://payu.in/))

# Setup

* Configuration 

  specify your mode of payment as per your app env.
  config/development.rb

  set your keys which you have received from payu here.

* Files to go through for workflow.

  config/environment.rb
  config/development.rb
  app/controllers/CartsController.rb
  app/views/carts/show.html.erb 

* Start Transacting

  bundle
  rails s

# TODO

* Write code and documentation
* Fix project description in gemspec
* Change testing framework if necessary (see Rakefile, currently RSpec)
* Adjust active_merchant_payu_in.gemspec if your github name is not ramsingla
* Adjust License if your real name is not Ram Singla

# Author(s)
Ashok Vishwakarma ( akvlko  at gmail dot com )
Sandeep Kumar ( sandeep dot kumar at payu dot in )

# Copyright
Copyright (c) 2013 PayU India

# MIT License
Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
