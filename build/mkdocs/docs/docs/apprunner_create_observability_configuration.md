<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_create_observability_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an App Runner observability configuration resource

### Description

Create an App Runner observability configuration resource. App Runner
requires this resource when you create or update App Runner services and
you want to enable non-default observability features. You can share an
observability configuration across multiple services.

Create multiple revisions of a configuration by calling this action
multiple times using the same `ObservabilityConfigurationName`. The call
returns incremental `ObservabilityConfigurationRevision` values. When
you create a service and configure an observability configuration
resource, the service uses the latest active revision of the
observability configuration by default. You can optionally configure the
service to use a specific revision.

The observability configuration resource is designed to configure
multiple features (currently one feature, tracing). This action takes
optional parameters that describe the configuration of these features
(currently one parameter, `TraceConfiguration`). If you don't specify a
feature parameter, App Runner doesn't enable the feature.

### Usage

    apprunner_create_observability_configuration(
      ObservabilityConfigurationName, TraceConfiguration, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_create_observability_configuration_:_ObservabilityConfigurationName">ObservabilityConfigurationName</code></td>
<td><p>[required] A name for the observability configuration. When you
use it for the first time in an Amazon Web Services Region, App Runner
creates revision number <code>1</code> of this name. When you use the
same name in subsequent calls, App Runner creates incremental revisions
of the configuration.</p>
<p>The name <code>DefaultConfiguration</code> is reserved. You can't use
it to create a new observability configuration, and you can't create a
revision of it.</p>
<p>When you want to use your own observability configuration for your
App Runner service, <em>create a configuration with a different
name</em>, and then provide it when you create or update your
service.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_create_observability_configuration_:_TraceConfiguration">TraceConfiguration</code></td>
<td><p>The configuration of the tracing feature within this
observability configuration. If you don't specify it, App Runner doesn't
enable tracing.</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_create_observability_configuration_:_Tags">Tags</code></td>
<td><p>A list of metadata items that you can associate with your
observability configuration resource. A tag is a key-value
pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ObservabilityConfiguration = list(
        ObservabilityConfigurationArn = "string",
        ObservabilityConfigurationName = "string",
        TraceConfiguration = list(
          Vendor = "AWSXRAY"
        ),
        ObservabilityConfigurationRevision = 123,
        Latest = TRUE|FALSE,
        Status = "ACTIVE"|"INACTIVE",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        DeletedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_observability_configuration(
      ObservabilityConfigurationName = "string",
      TraceConfiguration = list(
        Vendor = "AWSXRAY"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
