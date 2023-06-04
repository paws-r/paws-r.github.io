<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_describe_observability_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Return a full description of an App Runner observability configuration resource

### Description

Return a full description of an App Runner observability configuration
resource.

### Usage

    apprunner_describe_observability_configuration(
      ObservabilityConfigurationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_describe_observability_configuration_:_ObservabilityConfigurationArn">ObservabilityConfigurationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the App Runner
observability configuration that you want a description for.</p>
<p>The ARN can be a full observability configuration ARN, or a partial
ARN ending with either <code>.../name </code> or
<code>.../name/revision </code>. If a revision isn't specified, the
latest active revision is described.</p></td>
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

    svc$describe_observability_configuration(
      ObservabilityConfigurationArn = "string"
    )
