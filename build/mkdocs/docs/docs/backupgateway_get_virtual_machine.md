<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_get_virtual_machine</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## By providing the ARN (Amazon Resource Name), this API returns the virtual machine

### Description

By providing the ARN (Amazon Resource Name), this API returns the
virtual machine.

### Usage

    backupgateway_get_virtual_machine(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_get_virtual_machine_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the virtual
machine.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VirtualMachine = list(
        HostName = "string",
        HypervisorId = "string",
        LastBackupDate = as.POSIXct(
          "2015-01-01"
        ),
        Name = "string",
        Path = "string",
        ResourceArn = "string",
        VmwareTags = list(
          list(
            VmwareCategory = "string",
            VmwareTagDescription = "string",
            VmwareTagName = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_virtual_machine(
      ResourceArn = "string"
    )
