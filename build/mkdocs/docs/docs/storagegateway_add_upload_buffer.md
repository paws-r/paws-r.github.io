<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_add_upload_buffer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Configures one or more gateway local disks as upload buffer for a specified gateway

### Description

Configures one or more gateway local disks as upload buffer for a
specified gateway. This operation is supported for the stored volume,
cached volume, and tape gateway types.

In the request, you specify the gateway Amazon Resource Name (ARN) to
which you want to add upload buffer, and one or more disk IDs that you
want to configure as upload buffer.

### Usage

    storagegateway_add_upload_buffer(GatewayARN, DiskIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_add_upload_buffer_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_add_upload_buffer_:_DiskIds">DiskIds</code></td>
<td><p>[required] An array of strings that identify disks that are to be
configured as working storage. Each string has a minimum length of 1 and
maximum length of 300. You can get the disk IDs from the
<code>list_local_disks</code> API.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$add_upload_buffer(
      GatewayARN = "string",
      DiskIds = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # Configures one or more gateway local disks as upload buffer for a
    # specified gateway.
    svc$add_upload_buffer(
      DiskIds = list(
        "pci-0000:03:00.0-scsi-0:0:0:0",
        "pci-0000:03:00.0-scsi-0:0:1:0"
      ),
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    ## End(Not run)
