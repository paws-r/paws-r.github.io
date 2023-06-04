<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_delete_storage_virtual_machine</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing Amazon FSx for ONTAP storage virtual machine (SVM)

### Description

Deletes an existing Amazon FSx for ONTAP storage virtual machine (SVM).
Prior to deleting an SVM, you must delete all non-root volumes in the
SVM, otherwise the operation will fail.

### Usage

    fsx_delete_storage_virtual_machine(ClientRequestToken,
      StorageVirtualMachineId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_delete_storage_virtual_machine_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="fsx_delete_storage_virtual_machine_:_StorageVirtualMachineId">StorageVirtualMachineId</code></td>
<td><p>[required] The ID of the SVM that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StorageVirtualMachineId = "string",
      Lifecycle = "CREATED"|"CREATING"|"DELETING"|"FAILED"|"MISCONFIGURED"|"PENDING"
    )

### Request syntax

    svc$delete_storage_virtual_machine(
      ClientRequestToken = "string",
      StorageVirtualMachineId = "string"
    )
