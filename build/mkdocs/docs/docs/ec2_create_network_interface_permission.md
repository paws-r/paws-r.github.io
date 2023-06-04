<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_network_interface_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Grants an Amazon Web Services-authorized account permission to attach the specified network interface to an instance in their account

### Description

Grants an Amazon Web Services-authorized account permission to attach
the specified network interface to an instance in their account.

You can grant permission to a single Amazon Web Services account only,
and only one account at a time.

### Usage

    ec2_create_network_interface_permission(NetworkInterfaceId,
      AwsAccountId, AwsService, Permission, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_network_interface_permission_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>[required] The ID of the network interface.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_interface_permission_:_AwsAccountId">AwsAccountId</code></td>
<td><p>The Amazon Web Services account ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_interface_permission_:_AwsService">AwsService</code></td>
<td><p>The Amazon Web Service. Currently not supported.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_interface_permission_:_Permission">Permission</code></td>
<td><p>[required] The type of permission to grant.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_interface_permission_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InterfacePermission = list(
        NetworkInterfacePermissionId = "string",
        NetworkInterfaceId = "string",
        AwsAccountId = "string",
        AwsService = "string",
        Permission = "INSTANCE-ATTACH"|"EIP-ASSOCIATE",
        PermissionState = list(
          State = "pending"|"granted"|"revoking"|"revoked",
          StatusMessage = "string"
        )
      )
    )

### Request syntax

    svc$create_network_interface_permission(
      NetworkInterfaceId = "string",
      AwsAccountId = "string",
      AwsService = "string",
      Permission = "INSTANCE-ATTACH"|"EIP-ASSOCIATE",
      DryRun = TRUE|FALSE
    )
