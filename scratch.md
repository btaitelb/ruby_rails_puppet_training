# Lab 1 - Up and Running With Rails

# Notes

## /etc/puppet/hiera.yaml
```
---
:backends:
  - yaml

:hierarchy:
  - "%{environment}"
  - "osfamily/%{::osfamily}"
  - common

:yaml:
  :datadir: /etc/puppet/code/hiera
```

## ruby
```
require 'hiera'
require 'puppet'
hiera = Hiera.new(config: '/etc/puppet/hiera.yaml')
hiera.lookup('message', 'none', {'environment' => 'development'})
```
