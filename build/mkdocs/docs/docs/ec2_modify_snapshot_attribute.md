<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_snapshot_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or removes permission settings for the specified snapshot

### Description

Adds or removes permission settings for the specified snapshot. You may
add or remove specified Amazon Web Services account IDs from a
snapshot's list of create volume permissions, but you cannot do both in
a single operation. If you need to both add and remove account IDs for a
snapshot, you must use multiple operations. You can make up to 500
modifications to a snapshot in a single operation.

Encrypted snapshots and snapshots with Amazon Web Services Marketplace
product codes cannot be made public. Snapshots encrypted with your
default KMS key cannot be shared with other accounts.

For more information about modifying snapshot permissions, see [Share a
snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_modify_snapshot_attribute(Attribute, CreateVolumePermission,
      GroupNames, OperationType, SnapshotId, UserIds, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_snapshot_attribute_:_Attribute">Attribute</code></td>
<td><p>The snapshot attribute to modify. Only volume creation
permissions can be modified.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_snapshot_attribute_:_CreateVolumePermission">CreateVolumePermission</code></td>
<td><p>A JSON representation of the snapshot attribute
modification.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_snapshot_attribute_:_GroupNames">GroupNames</code></td>
<td><p>The group to modify for the snapshot.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_snapshot_attribute_:_OperationType">OperationType</code></td>
<td><p>The type of operation to perform to the attribute.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_snapshot_attribute_:_SnapshotId">SnapshotId</code></td>
<td><p>[required] The ID of the snapshot.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_snapshot_attribute_:_UserIds">UserIds</code></td>
<td><p>The account ID to modify for the snapshot.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_snapshot_attribute_:_DryRun">DryRun</code></td>
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

    svc$modify_snapshot_attribute(
      Attribute = "productCodes"|"createVolumePermission",
      CreateVolumePermission = list(
        Add = list(
          list(
            Group = "all",
            UserId = "string"
          )
        ),
        Remove = list(
          list(
            Group = "all",
            UserId = "string"
          )
        )
      ),
      GroupNames = list(
        "string"
      ),
      OperationType = "add"|"remove",
      SnapshotId = "string",
      UserIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example modifies snapshot `snap-1234567890abcdef0` to remove the
    # create volume permission for a user with the account ID
    # `123456789012`. If the command succeeds, no output is returned.
    svc$modify_snapshot_attribute(
      Attribute = "createVolumePermission",
      OperationType = "remove",
      SnapshotId = "snap-1234567890abcdef0",
      UserIds = list(
        "123456789012"
      )
    )

    # This example makes the snapshot `snap-1234567890abcdef0` public.
    svc$modify_snapshot_attribute(
      Attribute = "createVolumePermission",
      GroupNames = list(
        "all"
      ),
      OperationType = "add",
      SnapshotId = "snap-1234567890abcdef0"
    )

    ## End(Not run)
