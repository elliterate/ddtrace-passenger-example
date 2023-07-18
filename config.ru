require 'datadog/profiling/preload'
require 'ddtrace'
require 'rack'

Datadog.configure do |c|
  c.tracing.instrument :rack
end

use Datadog::Tracing::Contrib::Rack::TraceMiddleware

run proc { |env| [200, {}, ['OK']] }
