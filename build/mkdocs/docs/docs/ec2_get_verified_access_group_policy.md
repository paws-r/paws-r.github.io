<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_verified_access_group_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Shows the contents of the Verified Access policy associated with the group

### Description

Shows the contents of the Verified Access policy associated with the
group.

### Usage

    ec2_get_verified_access_group_policy(VerifiedAccessGroupId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_verified_access_group_policy_:_VerifiedAccessGroupId">VerifiedAccessGroupId</code></td>
<td><p>[required] The ID of the Verified Access group.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_verified_access_group_policy_:_DryRun">DryRun</code></td>
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
      PolicyEnabled = TRUE|FALSE,
      PolicyDocument = "string"
    )

### Request syntax

    svc$get_verified_access_group_policy(
      VerifiedAccessGroupId = "string",
      DryRun = TRUE|FALSE
    )
