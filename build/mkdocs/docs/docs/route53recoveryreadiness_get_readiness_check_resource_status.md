<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_get_readiness_check_resource_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets individual readiness status for a readiness check

### Description

Gets individual readiness status for a readiness check. To see the
overall readiness status for a recovery group, that considers the
readiness status for all the readiness checks in the recovery group, use
GetRecoveryGroupReadinessSummary.

### Usage

    route53recoveryreadiness_get_readiness_check_resource_status(MaxResults,
      NextToken, ReadinessCheckName, ResourceIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_get_readiness_check_resource_status_:_MaxResults">MaxResults</code></td>
<td><p>The number of objects that you want to return with this
call.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_get_readiness_check_resource_status_:_NextToken">NextToken</code></td>
<td><p>The token that identifies which batch of results you want to
see.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoveryreadiness_get_readiness_check_resource_status_:_ReadinessCheckName">ReadinessCheckName</code></td>
<td><p>[required] Name of a readiness check.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_get_readiness_check_resource_status_:_ResourceIdentifier">ResourceIdentifier</code></td>
<td><p>[required] The resource identifier, which is the Amazon Resource
Name (ARN) or the identifier generated for the resource by Application
Recovery Controller (for example, for a DNS target resource).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Readiness = "READY"|"NOT_READY"|"UNKNOWN"|"NOT_AUTHORIZED",
      Rules = list(
        list(
          LastCheckedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          Messages = list(
            list(
              MessageText = "string"
            )
          ),
          Readiness = "READY"|"NOT_READY"|"UNKNOWN"|"NOT_AUTHORIZED",
          RuleId = "string"
        )
      )
    )

### Request syntax

    svc$get_readiness_check_resource_status(
      MaxResults = 123,
      NextToken = "string",
      ReadinessCheckName = "string",
      ResourceIdentifier = "string"
    )
