<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_put_remediation_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates the remediation configuration with a specific Config rule with the selected target or action

### Description

Adds or updates the remediation configuration with a specific Config
rule with the selected target or action. The API creates the
`RemediationConfiguration` object for the Config rule. The Config rule
must already exist for you to add a remediation configuration. The
target (SSM document) must exist and have permissions to use the target.

If you make backward incompatible changes to the SSM document, you must
call this again to ensure the remediations can run.

This API does not support adding remediation configurations for
service-linked Config Rules such as Organization Config rules, the rules
deployed by conformance packs, and rules deployed by Amazon Web Services
Security Hub.

For manual remediation configuration, you need to provide a value for
`automationAssumeRole` or use a value in the `assumeRole`field to
remediate your resources. The SSM automation document can use either as
long as it maps to a valid parameter.

However, for automatic remediation configuration, the only valid
`assumeRole` field value is `AutomationAssumeRole` and you need to
provide a value for `AutomationAssumeRole` to remediate your resources.

### Usage

    configservice_put_remediation_configurations(RemediationConfigurations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_put_remediation_configurations_:_RemediationConfigurations">RemediationConfigurations</code></td>
<td><p>[required] A list of remediation configuration objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedBatches = list(
        list(
          FailureMessage = "string",
          FailedItems = list(
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
      )
    )

### Request syntax

    svc$put_remediation_configurations(
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
