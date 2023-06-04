<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_list_vpc_endpoints_for_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all Amazon OpenSearch Service-managed VPC endpoints associated with a particular domain

### Description

Retrieves all Amazon OpenSearch Service-managed VPC endpoints associated
with a particular domain.

### Usage

    elasticsearchservice_list_vpc_endpoints_for_domain(DomainName,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_list_vpc_endpoints_for_domain_:_DomainName">DomainName</code></td>
<td><p>[required] Name of the ElasticSearch domain whose VPC endpoints
are to be listed.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_list_vpc_endpoints_for_domain_:_NextToken">NextToken</code></td>
<td><p>Provides an identifier to allow retrieval of paginated
results.</p></td>
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
