<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_delete_hypervisor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a hypervisor

### Description

Deletes a hypervisor.

### Usage

    backupgateway_delete_hypervisor(HypervisorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_delete_hypervisor_:_HypervisorArn">HypervisorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the hypervisor to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HypervisorArn = "string"
    )

### Request syntax

    svc$delete_hypervisor(
      HypervisorArn = "string"
    )
