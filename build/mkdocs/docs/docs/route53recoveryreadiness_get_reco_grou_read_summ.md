<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_get_recovery_group_readiness_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays a summary of information about a recovery group's readiness status

### Description

Displays a summary of information about a recovery group's readiness
status. Includes the readiness checks for resources in the recovery
group and the readiness status of each one.

### Usage

    route53recoveryreadiness_get_recovery_group_readiness_summary(
      MaxResults, NextToken, RecoveryGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_get_recovery_group_readiness_summary_:_MaxResults">MaxResults</code></td>
<td><p>The number of objects that you want to return with this
call.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_get_recovery_group_readiness_summary_:_NextToken">NextToken</code></td>
<td><p>The token that identifies which batch of results you want to
see.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoveryreadiness_get_recovery_group_readiness_summary_:_RecoveryGroupName">RecoveryGroupName</code></td>
<td><p>[required] The name of a recovery group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Readiness = "READY"|"NOT_READY"|"UNKNOWN"|"NOT_AUTHORIZED",
      ReadinessChecks = list(
        list(
          Readiness = "READY"|"NOT_READY"|"UNKNOWN"|"NOT_AUTHORIZED",
          ReadinessCheckName = "string"
        )
      )
    )

### Request syntax

    svc$get_recovery_group_readiness_summary(
      MaxResults = 123,
      NextToken = "string",
      RecoveryGroupName = "string"
    )
