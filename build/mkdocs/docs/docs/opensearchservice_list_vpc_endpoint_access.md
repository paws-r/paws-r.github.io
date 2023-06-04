<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_list_vpc_endpoint_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about each Amazon Web Services principal that is allowed to access a given Amazon OpenSearch Service domain through the use of an interface VPC endpoint

### Description

Retrieves information about each Amazon Web Services principal that is
allowed to access a given Amazon OpenSearch Service domain through the
use of an interface VPC endpoint.

### Usage

    opensearchservice_list_vpc_endpoint_access(DomainName, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_list_vpc_endpoint_access_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the OpenSearch Service domain to retrieve
access information for.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_list_vpc_endpoint_access_:_NextToken">NextToken</code></td>
<td><p>If your initial <code>list_vpc_endpoint_access</code> operation
returns a <code>nextToken</code>, you can include the returned
<code>nextToken</code> in subsequent
<code>list_vpc_endpoint_access</code> operations, which returns results
in the next page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthorizedPrincipalList = list(
        list(
          PrincipalType = "AWS_ACCOUNT"|"AWS_SERVICE",
          Principal = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_vpc_endpoint_access(
      DomainName = "string",
      NextToken = "string"
    )
