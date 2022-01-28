module github.com/signalfx/splunk-otel-go/instrumentation/github.com/gomodule/redigo/splunkredigo

go 1.16

require (
	github.com/gomodule/redigo v1.8.8
	github.com/signalfx/splunk-otel-go v0.7.0
	github.com/stretchr/testify v1.7.0
	go.opentelemetry.io/otel v1.3.0
	go.opentelemetry.io/otel/trace v1.3.0
)

replace github.com/signalfx/splunk-otel-go => ../../../../../