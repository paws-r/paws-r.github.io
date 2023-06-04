<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_ipam_scope</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete the scope for an IPAM

### Description

Delete the scope for an IPAM. You cannot delete the default scopes.

For more information, see [Delete a
scope](https://docs.aws.amazon.com/vpc/latest/ipam/delete-scope-ipam.html)
in the *Amazon VPC IPAM User Guide*.

### Usage

    ec2_delete_ipam_scope(DryRun, IpamScopeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_ipam_scope_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_ipam_scope_:_IpamScopeId">IpamScopeId</code></td>
<td><p>[required] The ID of the scope to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamScope = list(
        OwnerId = "string",
        IpamScopeId = "string",
        IpamScopeArn = "string",
        IpamArn = "string",
        IpamRegion = "string",
        IpamScopeType = "public"|"private",
        IsDefault = TRUE|FALSE,
        Description = "string",
        PoolCount = 123,
        State = "create-in-progress"|"create-complete"|"create-failed"|"modify-in-progress"|"modify-complete"|"modify-failed"|"delete-in-progress"|"delete-complete"|"delete-failed"|"isolate-in-progress"|"isolate-complete"|"restore-in-progress",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_ipam_scope(
      DryRun = TRUE|FALSE,
      IpamScopeId = "string"
    )
