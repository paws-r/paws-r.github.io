<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_start_virtual_machines_metadata_sync</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action sends a request to sync metadata across the specified virtual machines

### Description

This action sends a request to sync metadata across the specified
virtual machines.

### Usage

    backupgateway_start_virtual_machines_metadata_sync(HypervisorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_start_virtual_machines_metadata_sync_:_HypervisorArn">HypervisorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
hypervisor.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HypervisorArn = "string"
    )

### Request syntax

    svc$start_virtual_machines_metadata_sync(
      HypervisorArn = "string"
    )
