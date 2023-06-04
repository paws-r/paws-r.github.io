<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_list_scram_secrets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the Scram Secrets associated with an Amazon MSK cluster

### Description

Returns a list of the Scram Secrets associated with an Amazon MSK
cluster.

### Usage

    kafka_list_scram_secrets(ClusterArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_list_scram_secrets_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The arn of the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_list_scram_secrets_:_MaxResults">MaxResults</code></td>
<td><p>The maxResults of the query.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_list_scram_secrets_:_NextToken">NextToken</code></td>
<td><p>The nextToken of the query.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      SecretArnList = list(
        "string"
      )
    )

### Request syntax

    svc$list_scram_secrets(
      ClusterArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
