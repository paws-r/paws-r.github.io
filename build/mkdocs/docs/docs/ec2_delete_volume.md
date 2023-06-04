<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_volume</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified EBS volume

### Description

Deletes the specified EBS volume. The volume must be in the `available`
state (not attached to an instance).

The volume can remain in the `deleting` state for several minutes.

For more information, see [Delete an Amazon EBS
volume](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-volume.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_delete_volume(VolumeId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_volume_:_VolumeId">VolumeId</code></td>
<td><p>[required] The ID of the volume.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_volume_:_DryRun">DryRun</code></td>
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

    svc$delete_volume(
      VolumeId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example deletes an available volume with the volume ID of
    # `vol-049df61146c4d7901`. If the command succeeds, no output is
    # returned.
    svc$delete_volume(
      VolumeId = "vol-049df61146c4d7901"
    )

    ## End(Not run)
