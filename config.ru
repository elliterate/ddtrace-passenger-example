require 'rack'

run proc { |env| [200, {}, ['OK']] }
