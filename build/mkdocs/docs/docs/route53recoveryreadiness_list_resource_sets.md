<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_list_resource_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the resource sets in an account

### Description

Lists the resource sets in an account.

### Usage

    route53recoveryreadiness_list_resource_sets(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_list_resource_sets_:_MaxResults">MaxResults</code></td>
<td><p>The number of objects that you want to return with this
call.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_list_resource_sets_:_NextToken">NextToken</code></td>
<td><p>The token that identifies which batch of results you want to
see.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ResourceSets = list(
        list(
          ResourceSetArn = "string",
          ResourceSetName = "string",
          ResourceSetType = "string",
          Resources = list(
            list(
              ComponentId = "string",
              DnsTargetResource = list(
                DomainName = "string",
                HostedZoneArn = "string",
                RecordSetId = "string",
                RecordType = "string",
                TargetResource = list(
                  NLBResource = list(
                    Arn = "string"
                  ),
                  R53Resource = list(
                    DomainName = "string",
                    RecordSetId = "string"
                  )
                )
              ),
              ReadinessScopes = list(
                "string"
              ),
              ResourceArn = "string"
            )
          ),
          Tags = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$list_resource_sets(
      MaxResults = 123,
      NextToken = "string"
    )
