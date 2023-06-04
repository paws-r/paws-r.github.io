<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_vpc_endpoint_service_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the principals (service consumers) that are permitted to discover your VPC endpoint service

### Description

Describes the principals (service consumers) that are permitted to
discover your VPC endpoint service.

### Usage

    ec2_describe_vpc_endpoint_service_permissions(DryRun, ServiceId,
      Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoint_service_permissions_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpc_endpoint_service_permissions_:_ServiceId">ServiceId</code></td>
<td><p>[required] The ID of the service.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoint_service_permissions_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>principal</code> - The ARN of the principal.</p></li>
<li><p><code>principal-type</code> - The principal type
(<code>All</code> | <code>Service</code> | <code>OrganizationUnit</code>
| <code>Account</code> | <code>User</code> |
<code>Role</code>).</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpc_endpoint_service_permissions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results of the initial request can be seen by
sending another request with the returned <code>NextToken</code> value.
This value can be between 5 and 1,000; if <code>MaxResults</code> is
given a value larger than 1,000, only 1,000 results are
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoint_service_permissions_:_NextToken">NextToken</code></td>
<td><p>The token to retrieve the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AllowedPrincipals = list(
        list(
          PrincipalType = "All"|"Service"|"OrganizationUnit"|"Account"|"User"|"Role",
          Principal = "string",
          ServicePermissionId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          ServiceId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_vpc_endpoint_service_permissions(
      DryRun = TRUE|FALSE,
      ServiceId = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
