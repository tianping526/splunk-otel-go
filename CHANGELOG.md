# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Update `go.opentelemetry.io/otel*` dependencies from [`v0.20.0`][otel-v0.20.0] to [`v1.0.0-RC1`][otel-v1.0.0-RC1].
- Update `go.opentelemetry.io/contrib*` dependencies from [`v0.20.0`][contrib-v0.20.0] to [`v0.21.0`][contrib-v0.21.0].

### Remove

- Drop support for Go 1.14 as [`go.opentelemetry.io@v1.0.0-RC1`](https://github.com/open-telemetry/opentelemetry-go/releases/tag/v1.0.0-RC1) did the same.

## [0.3.0] - 2021-05-18

The primary changes of this release is added support
for sending data directly to Splunk Observability Cloud.

### Added

- Add support for setting the [Splunk's organization access token](https://docs.splunk.com/observability/admin/authentication-tokens/org-tokens.html)
  using the `SPLUNK_ACCESS_TOKEN` environmental variable or `distro.WithAccessToken` option.
  It allows exporters sending data directly to the Splunk Observability Cloud.
  To do so, the `OTEL_EXPORTER_JAEGER_ENDPOINT` or `distro.WithEndpoint` must be set
  with Splunk back-end ingest endpoint URL: `https://ingest.<REALM>.signalfx.com/v2/trace`.

### Changed

- The default Jaeger exporter URL is now loaded by
  [`go.opentelemetry.io/otel/exporters/trace/jaeger`](https://pkg.go.dev/go.opentelemetry.io/otel/exporters/trace/jaeger)
  module.
- Applying `distro.WithEndpoint("")` results in no operation.

### Removed

- Remove `SIGNALFX_ENDPOINT_URL` environmental variable, use `OTEL_EXPORTER_JAEGER_ENDPOINT` instead.

## [0.2.0] - 2021-04-27

The primary change of this release is updating the dependency of `go.opentelemetry.io/otel*` packages from [`v0.19.0`][otel-v0.19.0] to [`v0.20.0`][otel-v0.20.0] and similarly `go.opentelemetry.io/contrib*` package from [`v0.19.0`][contrib-v0.19.0] to [`v0.20.0`][contrib-v0.20.0].
This includes [a fix](https://github.com/open-telemetry/opentelemetry-go/pull/1830) in the Jaeger exporter.
This fix removes the duplicate batching that the exporter implemented.
Now the `BatchSpanProcessor` that `distro` configures by default will not experience an impedance mismatch with this duplicate batching.

### Changed

- Update `go.opentelemetry.io/otel*` dependencies from [`v0.19.0`][otel-v0.19.0] to [`v0.20.0`][otel-v0.20.0].
- Update `go.opentelemetry.io/contrib*` dependencies from [`v0.19.0`][contrib-v0.19.0] to [`v0.20.0`][contrib-v0.20.0].

## [0.1.0] - 2021-04-08

### Added

- Add [`distro`](./distro) package providing functionality to quickly setup the OpenTelemetry Go implementation with useful Splunk defaults.
- Add [`splunkhttp`](./instrumentation/net/http/splunkhttp) module providing additional Splunk specific instrumentation for `net/http`.

[Unreleased]: https://github.com/signalfx/splunk-otel-go/compare/v0.3.0...HEAD
[0.3.0]: https://github.com/signalfx/splunk-otel-go/releases/tag/v0.3.0
[0.2.0]: https://github.com/signalfx/splunk-otel-go/releases/tag/v0.2.0
[0.1.0]: https://github.com/signalfx/splunk-otel-go/releases/tag/v0.1.0

[otel-v1.0.0-RC1]: https://github.com/open-telemetry/opentelemetry-go/releases/tag/v1.0.0-RC1
[otel-v0.20.0]: https://github.com/open-telemetry/opentelemetry-go/releases/tag/v0.20.0
[otel-v0.19.0]: https://github.com/open-telemetry/opentelemetry-go/releases/tag/v0.19.0

[contrib-v0.21.0]: https://github.com/open-telemetry/opentelemetry-go-contrib/releases/tag/v0.21.0
[contrib-v0.20.0]: https://github.com/open-telemetry/opentelemetry-go-contrib/releases/tag/v0.20.0
[contrib-v0.19.0]: https://github.com/open-telemetry/opentelemetry-go-contrib/releases/tag/v0.19.0