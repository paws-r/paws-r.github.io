<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_volume_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a volume attribute

### Description

Modifies a volume attribute.

By default, all I/O operations for the volume are suspended when the
data on the volume is determined to be potentially inconsistent, to
prevent undetectable, latent data corruption. The I/O access to the
volume can be resumed by first enabling I/O access and then checking the
data consistency on your volume.

You can change the default behavior to resume I/O operations. We
recommend that you change this only for boot volumes or for volumes that
are stateless or disposable.

### Usage

    ec2_modify_volume_attribute(AutoEnableIO, VolumeId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_volume_attribute_:_AutoEnableIO">AutoEnableIO</code></td>
<td><p>Indicates whether the volume should be auto-enabled for I/O
operations.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_volume_attribute_:_VolumeId">VolumeId</code></td>
<td><p>[required] The ID of the volume.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_volume_attribute_:_DryRun">DryRun</code></td>
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

    svc$modify_volume_attribute(
      AutoEnableIO = list(
        Value = TRUE|FALSE
      ),
      VolumeId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example sets the `autoEnableIo` attribute of the volume with the
    # ID `vol-1234567890abcdef0` to `true`. If the command succeeds, no
    # output is returned.
    svc$modify_volume_attribute(
      AutoEnableIO = list(
        Value = TRUE
      ),
      DryRun = TRUE,
      VolumeId = "vol-1234567890abcdef0"
    )

    ## End(Not run)
