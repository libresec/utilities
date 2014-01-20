# utilities

These are random utilities I've created so I don't need to look up stuff repeatedly, 
or if I just feel like tinkering with something.


## BCrypt_test

This script can be used to display how long it takes to produce a password 
hash using bcrypt. The built-in benchmark module is used for timing.

Tested using: 
        ruby 1.9.3p194
        bcrypt-ruby (3.0.1)

Usage: 

```

ruby BCrypt_test.rb 12

```

This will generally output ~.25 seconds, but it's hardware-dependent.
