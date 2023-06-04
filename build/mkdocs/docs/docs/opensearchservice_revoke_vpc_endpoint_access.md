<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_revoke_vpc_endpoint_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Revokes access to an Amazon OpenSearch Service domain that was provided through an interface VPC endpoint

### Description

Revokes access to an Amazon OpenSearch Service domain that was provided
through an interface VPC endpoint.

### Usage

    opensearchservice_revoke_vpc_endpoint_access(DomainName, Account)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_revoke_vpc_endpoint_access_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the OpenSearch Service domain.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_revoke_vpc_endpoint_access_:_Account">Account</code></td>
<td><p>[required] The account ID to revoke access from.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$revoke_vpc_endpoint_access(
      DomainName = "string",
      Account = "string"
    )
