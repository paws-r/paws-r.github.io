<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_disassociate_file_system</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates an Amazon FSx file system from the specified gateway

### Description

Disassociates an Amazon FSx file system from the specified gateway.
After the disassociation process finishes, the gateway can no longer
access the Amazon FSx file system. This operation is only supported in
the FSx File Gateway type.

### Usage

    storagegateway_disassociate_file_system(FileSystemAssociationARN,
      ForceDelete)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_disassociate_file_system_:_FileSystemAssociationARN">FileSystemAssociationARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the file system
association to be deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_disassociate_file_system_:_ForceDelete">ForceDelete</code></td>
<td><p>If this value is set to true, the operation disassociates an
Amazon FSx file system immediately. It ends all data uploads to the file
system, and the file system association enters the
<code>FORCE_DELETING</code> status. If this value is set to false, the
Amazon FSx file system does not disassociate until all data is
uploaded.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileSystemAssociationARN = "string"
    )

### Request syntax

    svc$disassociate_file_system(
      FileSystemAssociationARN = "string",
      ForceDelete = TRUE|FALSE
    )
