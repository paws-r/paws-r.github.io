<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_list_vpc_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all Amazon OpenSearch Service-managed VPC endpoints in the current Amazon Web Services account and Region

### Description

Retrieves all Amazon OpenSearch Service-managed VPC endpoints in the
current Amazon Web Services account and Region.

### Usage

    opensearchservice_list_vpc_endpoints(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_list_vpc_endpoints_:_NextToken">NextToken</code></td>
<td><p>If your initial <code>list_vpc_endpoints</code> operation returns
a <code>nextToken</code>, you can include the returned
<code>nextToken</code> in subsequent <code>list_vpc_endpoints</code>
operations, which returns results in the next page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcEndpointSummaryList = list(
        list(
          VpcEndpointId = "string",
          VpcEndpointOwner = "string",
          DomainArn = "string",
          Status = "CREATING"|"CREATE_FAILED"|"ACTIVE"|"UPDATING"|"UPDATE_FAILED"|"DELETING"|"DELETE_FAILED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_vpc_endpoints(
      NextToken = "string"
    )
