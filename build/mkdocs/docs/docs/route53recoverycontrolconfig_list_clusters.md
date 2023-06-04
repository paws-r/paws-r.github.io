<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_list_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of all the clusters in an account

### Description

Returns an array of all the clusters in an account.

### Usage

    route53recoverycontrolconfig_list_clusters(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_list_clusters_:_MaxResults">MaxResults</code></td>
<td><p>The number of objects that you want to return with this
call.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_list_clusters_:_NextToken">NextToken</code></td>
<td><p>The token that identifies which batch of results you want to
see.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Clusters = list(
        list(
          ClusterArn = "string",
          ClusterEndpoints = list(
            list(
              Endpoint = "string",
              Region = "string"
            )
          ),
          Name = "string",
          Status = "PENDING"|"DEPLOYED"|"PENDING_DELETION"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_clusters(
      MaxResults = 123,
      NextToken = "string"
    )
