<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_list_vpc_endpoints_for_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all Amazon OpenSearch Service-managed VPC endpoints associated with a particular domain

### Description

Retrieves all Amazon OpenSearch Service-managed VPC endpoints associated
with a particular domain.

### Usage

    opensearchservice_list_vpc_endpoints_for_domain(DomainName, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_list_vpc_endpoints_for_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain to list associated VPC
endpoints for.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_list_vpc_endpoints_for_domain_:_NextToken">NextToken</code></td>
<td><p>If your initial <code>ListEndpointsForDomain</code> operation
returns a <code>nextToken</code>, you can include the returned
<code>nextToken</code> in subsequent <code>ListEndpointsForDomain</code>
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

    svc$list_vpc_endpoints_for_domain(
      DomainName = "string",
      NextToken = "string"
    )
