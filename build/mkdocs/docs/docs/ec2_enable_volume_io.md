<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_enable_volume_io</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables I/O operations for a volume that had I/O operations disabled because the data on the volume was potentially inconsistent

### Description

Enables I/O operations for a volume that had I/O operations disabled
because the data on the volume was potentially inconsistent.

### Usage

    ec2_enable_volume_io(DryRun, VolumeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_enable_volume_io_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_enable_volume_io_:_VolumeId">VolumeId</code></td>
<td><p>[required] The ID of the volume.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_volume_io(
      DryRun = TRUE|FALSE,
      VolumeId = "string"
    )

### Examples

    ## Not run: 
    # This example enables I/O on volume `vol-1234567890abcdef0`.
    svc$enable_volume_io(
      VolumeId = "vol-1234567890abcdef0"
    )

    ## End(Not run)
