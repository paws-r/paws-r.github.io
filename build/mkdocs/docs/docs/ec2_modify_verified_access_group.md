<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_verified_access_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified Amazon Web Services Verified Access group configuration

### Description

Modifies the specified Amazon Web Services Verified Access group
configuration.

### Usage

    ec2_modify_verified_access_group(VerifiedAccessGroupId,
      VerifiedAccessInstanceId, Description, ClientToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_verified_access_group_:_VerifiedAccessGroupId">VerifiedAccessGroupId</code></td>
<td><p>[required] The ID of the Verified Access group.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_verified_access_group_:_VerifiedAccessInstanceId">VerifiedAccessInstanceId</code></td>
<td><p>The ID of the Verified Access instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_verified_access_group_:_Description">Description</code></td>
<td><p>A description for the Verified Access group.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_verified_access_group_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive token that you provide to ensure
idempotency of your modification request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_verified_access_group_:_DryRun">DryRun</code></td>
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
      VerifiedAccessGroup = list(
        VerifiedAccessGroupId = "string",
        VerifiedAccessInstanceId = "string",
        Description = "string",
        Owner = "string",
        VerifiedAccessGroupArn = "string",
        CreationTime = "string",
        LastUpdatedTime = "string",
        DeletionTime = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$modify_verified_access_group(
      VerifiedAccessGroupId = "string",
      VerifiedAccessInstanceId = "string",
      Description = "string",
      ClientToken = "string",
      DryRun = TRUE|FALSE
    )
