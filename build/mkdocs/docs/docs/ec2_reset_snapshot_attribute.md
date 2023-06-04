<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_reset_snapshot_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resets permission settings for the specified snapshot

### Description

Resets permission settings for the specified snapshot.

For more information about modifying snapshot permissions, see [Share a
snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_reset_snapshot_attribute(Attribute, SnapshotId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_reset_snapshot_attribute_:_Attribute">Attribute</code></td>
<td><p>[required] The attribute to reset. Currently, only the attribute
for permission to create volumes can be reset.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_reset_snapshot_attribute_:_SnapshotId">SnapshotId</code></td>
<td><p>[required] The ID of the snapshot.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_reset_snapshot_attribute_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$reset_snapshot_attribute(
      Attribute = "productCodes"|"createVolumePermission",
      SnapshotId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example resets the create volume permissions for snapshot
    # `snap-1234567890abcdef0`. If the command succeeds, no output is
    # returned.
    svc$reset_snapshot_attribute(
      Attribute = "createVolumePermission",
      SnapshotId = "snap-1234567890abcdef0"
    )

    ## End(Not run)
