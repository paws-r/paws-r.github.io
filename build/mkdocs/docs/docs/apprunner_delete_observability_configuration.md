<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_delete_observability_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an App Runner observability configuration resource

### Description

Delete an App Runner observability configuration resource. You can
delete a specific revision or the latest active revision. You can't
delete a configuration that's used by one or more App Runner services.

### Usage

    apprunner_delete_observability_configuration(
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
id="apprunner_delete_observability_configuration_:_ObservabilityConfigurationArn">ObservabilityConfigurationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the App Runner
observability configuration that you want to delete.</p>
<p>The ARN can be a full observability configuration ARN, or a partial
ARN ending with either <code>.../name </code> or
<code>.../name/revision </code>. If a revision isn't specified, the
latest active revision is deleted.</p></td>
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

    svc$delete_observability_configuration(
      ObservabilityConfigurationArn = "string"
    )
