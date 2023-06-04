<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_remediation_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details of one or more remediation configurations

### Description

Returns the details of one or more remediation configurations.

### Usage

    configservice_describe_remediation_configurations(ConfigRuleNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_remediation_configurations_:_ConfigRuleNames">ConfigRuleNames</code></td>
<td><p>[required] A list of Config rule names of remediation
configurations for which you want details.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RemediationConfigurations = list(
        list(
          ConfigRuleName = "string",
          TargetType = "SSM_DOCUMENT",
          TargetId = "string",
          TargetVersion = "string",
          Parameters = list(
            list(
              ResourceValue = list(
                Value = "RESOURCE_ID"
              ),
              StaticValue = list(
                Values = list(
                  "string"
                )
              )
            )
          ),
          ResourceType = "string",
          Automatic = TRUE|FALSE,
          ExecutionControls = list(
            SsmControls = list(
              ConcurrentExecutionRatePercentage = 123,
              ErrorPercentage = 123
            )
          ),
          MaximumAutomaticAttempts = 123,
          RetryAttemptSeconds = 123,
          Arn = "string",
          CreatedByService = "string"
        )
      )
    )

### Request syntax

    svc$describe_remediation_configurations(
      ConfigRuleNames = list(
        "string"
      )
    )
