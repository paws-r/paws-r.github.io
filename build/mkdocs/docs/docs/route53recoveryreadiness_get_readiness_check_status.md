<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_get_readiness_check_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the readiness status for an individual readiness check

### Description

Gets the readiness status for an individual readiness check. To see the
overall readiness status for a recovery group, that considers the
readiness status for all the readiness checks in a recovery group, use
GetRecoveryGroupReadinessSummary.

### Usage

    route53recoveryreadiness_get_readiness_check_status(MaxResults,
      NextToken, ReadinessCheckName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_get_readiness_check_status_:_MaxResults">MaxResults</code></td>
<td><p>The number of objects that you want to return with this
call.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_get_readiness_check_status_:_NextToken">NextToken</code></td>
<td><p>The token that identifies which batch of results you want to
see.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoveryreadiness_get_readiness_check_status_:_ReadinessCheckName">ReadinessCheckName</code></td>
<td><p>[required] Name of a readiness check.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Messages = list(
        list(
          MessageText = "string"
        )
      ),
      NextToken = "string",
      Readiness = "READY"|"NOT_READY"|"UNKNOWN"|"NOT_AUTHORIZED",
      Resources = list(
        list(
          ComponentId = "string",
          LastCheckedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          Readiness = "READY"|"NOT_READY"|"UNKNOWN"|"NOT_AUTHORIZED",
          ResourceArn = "string"
        )
      )
    )

### Request syntax

    svc$get_readiness_check_status(
      MaxResults = 123,
      NextToken = "string",
      ReadinessCheckName = "string"
    )
