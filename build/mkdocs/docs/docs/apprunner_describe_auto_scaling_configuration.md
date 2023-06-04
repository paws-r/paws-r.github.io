<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_describe_auto_scaling_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Return a full description of an App Runner automatic scaling configuration resource

### Description

Return a full description of an App Runner automatic scaling
configuration resource.

### Usage

    apprunner_describe_auto_scaling_configuration(
      AutoScalingConfigurationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_describe_auto_scaling_configuration_:_AutoScalingConfigurationArn">AutoScalingConfigurationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the App Runner auto
scaling configuration that you want a description for.</p>
<p>The ARN can be a full auto scaling configuration ARN, or a partial
ARN ending with either <code>.../name </code> or
<code>.../name/revision </code>. If a revision isn't specified, the
latest active revision is described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoScalingConfiguration = list(
        AutoScalingConfigurationArn = "string",
        AutoScalingConfigurationName = "string",
        AutoScalingConfigurationRevision = 123,
        Latest = TRUE|FALSE,
        Status = "ACTIVE"|"INACTIVE",
        MaxConcurrency = 123,
        MinSize = 123,
        MaxSize = 123,
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        DeletedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_auto_scaling_configuration(
      AutoScalingConfigurationArn = "string"
    )
