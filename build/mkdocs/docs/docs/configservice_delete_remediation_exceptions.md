<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_remediation_exceptions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes one or more remediation exceptions mentioned in the resource keys

### Description

Deletes one or more remediation exceptions mentioned in the resource
keys.

Config generates a remediation exception when a problem occurs executing
a remediation action to a specific resource. Remediation exceptions
blocks auto-remediation until the exception is cleared.

### Usage

    configservice_delete_remediation_exceptions(ConfigRuleName,
      ResourceKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_remediation_exceptions_:_ConfigRuleName">ConfigRuleName</code></td>
<td><p>[required] The name of the Config rule for which you want to
delete remediation exception configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_delete_remediation_exceptions_:_ResourceKeys">ResourceKeys</code></td>
<td><p>[required] An exception list of resource exception keys to be
processed with the current request. Config adds exception for each
resource key. For example, Config adds 3 exceptions for 3 resource
keys.</p></td>
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
              ResourceType = "string",
              ResourceId = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$delete_remediation_exceptions(
      ConfigRuleName = "string",
      ResourceKeys = list(
        list(
          ResourceType = "string",
          ResourceId = "string"
        )
      )
    )
