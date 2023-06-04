<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_client_vpn_authorization_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the authorization rules for a specified Client VPN endpoint

### Description

Describes the authorization rules for a specified Client VPN endpoint.

### Usage

    ec2_describe_client_vpn_authorization_rules(ClientVpnEndpointId, DryRun,
      NextToken, Filters, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_authorization_rules_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_client_vpn_authorization_rules_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_authorization_rules_:_NextToken">NextToken</code></td>
<td><p>The token to retrieve the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_client_vpn_authorization_rules_:_Filters">Filters</code></td>
<td><p>One or more filters. Filter names and values are
case-sensitive.</p>
<ul>
<li><p><code>description</code> - The description of the authorization
rule.</p></li>
<li><p><code>destination-cidr</code> - The CIDR of the network to which
the authorization rule applies.</p></li>
<li><p><code>group-id</code> - The ID of the Active Directory group to
which the authorization rule grants access.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_authorization_rules_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results can be seen by sending another
request with the nextToken value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthorizationRules = list(
        list(
          ClientVpnEndpointId = "string",
          Description = "string",
          GroupId = "string",
          AccessAll = TRUE|FALSE,
          DestinationCidr = "string",
          Status = list(
            Code = "authorizing"|"active"|"failed"|"revoking",
            Message = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_client_vpn_authorization_rules(
      ClientVpnEndpointId = "string",
      DryRun = TRUE|FALSE,
      NextToken = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123
    )
