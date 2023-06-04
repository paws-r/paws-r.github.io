<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_snapshot_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified attribute of the specified snapshot

### Description

Describes the specified attribute of the specified snapshot. You can
specify only one attribute at a time.

For more information about EBS snapshots, see [Amazon EBS
snapshots](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_describe_snapshot_attribute(Attribute, SnapshotId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_snapshot_attribute_:_Attribute">Attribute</code></td>
<td><p>[required] The snapshot attribute you would like to
view.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_snapshot_attribute_:_SnapshotId">SnapshotId</code></td>
<td><p>[required] The ID of the EBS snapshot.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_snapshot_attribute_:_DryRun">DryRun</code></td>
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
      CreateVolumePermissions = list(
        list(
          Group = "all",
          UserId = "string"
        )
      ),
      ProductCodes = list(
        list(
          ProductCodeId = "string",
          ProductCodeType = "devpay"|"marketplace"
        )
      ),
      SnapshotId = "string"
    )

### Request syntax

    svc$describe_snapshot_attribute(
      Attribute = "productCodes"|"createVolumePermission",
      SnapshotId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example describes the `createVolumePermission` attribute on a
    # snapshot with the snapshot ID of `snap-066877671789bd71b`.
    svc$describe_snapshot_attribute(
      Attribute = "createVolumePermission",
      SnapshotId = "snap-066877671789bd71b"
    )

    ## End(Not run)
