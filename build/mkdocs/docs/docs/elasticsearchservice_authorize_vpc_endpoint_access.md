<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_authorize_vpc_endpoint_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides access to an Amazon OpenSearch Service domain through the use of an interface VPC endpoint

### Description

Provides access to an Amazon OpenSearch Service domain through the use
of an interface VPC endpoint.

### Usage

    elasticsearchservice_authorize_vpc_endpoint_access(DomainName, Account)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_authorize_vpc_endpoint_access_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the OpenSearch Service domain to provide
access to.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_authorize_vpc_endpoint_access_:_Account">Account</code></td>
<td><p>[required] The account ID to grant access to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthorizedPrincipal = list(
        PrincipalType = "AWS_ACCOUNT"|"AWS_SERVICE",
        Principal = "string"
      )
    )

### Request syntax

    svc$authorize_vpc_endpoint_access(
      DomainName = "string",
      Account = "string"
    )
