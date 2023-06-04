<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_list_suggested_resiliency_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the suggested resiliency policies for the Resilience Hub applications

### Description

Lists the suggested resiliency policies for the Resilience Hub
applications.

### Usage

    resiliencehub_list_suggested_resiliency_policies(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_list_suggested_resiliency_policies_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the response. If more
results exist than the specified <code>MaxResults</code> value, a token
is included in the response so that the remaining results can be
retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_list_suggested_resiliency_policies_:_nextToken">nextToken</code></td>
<td><p>Null, or the token from a previous call to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      resiliencyPolicies = list(
        list(
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          dataLocationConstraint = "AnyLocation"|"SameContinent"|"SameCountry",
          estimatedCostTier = "L1"|"L2"|"L3"|"L4",
          policy = list(
            list(
              rpoInSecs = 123,
              rtoInSecs = 123
            )
          ),
          policyArn = "string",
          policyDescription = "string",
          policyName = "string",
          tags = list(
            "string"
          ),
          tier = "MissionCritical"|"Critical"|"Important"|"CoreServices"|"NonCritical"
        )
      )
    )

### Request syntax

    svc$list_suggested_resiliency_policies(
      maxResults = 123,
      nextToken = "string"
    )
