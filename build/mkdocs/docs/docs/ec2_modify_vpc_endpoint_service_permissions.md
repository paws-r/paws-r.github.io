<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_vpc_endpoint_service_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the permissions for your VPC endpoint service

### Description

Modifies the permissions for your VPC endpoint service. You can add or
remove permissions for service consumers (Amazon Web Services accounts,
users, and IAM roles) to connect to your endpoint service.

If you grant permissions to all principals, the service is public. Any
users who know the name of a public service can send a request to attach
an endpoint. If the service does not require manual approval,
attachments are automatically approved.

### Usage

    ec2_modify_vpc_endpoint_service_permissions(DryRun, ServiceId,
      AddAllowedPrincipals, RemoveAllowedPrincipals)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_service_permissions_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_service_permissions_:_ServiceId">ServiceId</code></td>
<td><p>[required] The ID of the service.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_service_permissions_:_AddAllowedPrincipals">AddAllowedPrincipals</code></td>
<td><p>The Amazon Resource Names (ARN) of the principals. Permissions
are granted to the principals in this list. To grant permissions to all
principals, specify an asterisk (*).</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_service_permissions_:_RemoveAllowedPrincipals">RemoveAllowedPrincipals</code></td>
<td><p>The Amazon Resource Names (ARN) of the principals. Permissions
are revoked for principals in this list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AddedPrincipals = list(
        list(
          PrincipalType = "All"|"Service"|"OrganizationUnit"|"Account"|"User"|"Role",
          Principal = "string",
          ServicePermissionId = "string",
          ServiceId = "string"
        )
      ),
      ReturnValue = TRUE|FALSE
    )

### Request syntax

    svc$modify_vpc_endpoint_service_permissions(
      DryRun = TRUE|FALSE,
      ServiceId = "string",
      AddAllowedPrincipals = list(
        "string"
      ),
      RemoveAllowedPrincipals = list(
        "string"
      )
    )
