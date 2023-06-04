<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_upload_buffer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the upload buffer of a gateway

### Description

Returns information about the upload buffer of a gateway. This operation
is supported for the stored volume, cached volume, and tape gateway
types.

The response includes disk IDs that are configured as upload buffer
space, and it includes the amount of upload buffer space allocated and
used.

### Usage

    storagegateway_describe_upload_buffer(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_upload_buffer_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string",
      DiskIds = list(
        "string"
      ),
      UploadBufferUsedInBytes = 123,
      UploadBufferAllocatedInBytes = 123
    )

### Request syntax

    svc$describe_upload_buffer(
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # Returns information about the upload buffer of a gateway including disk
    # IDs and the amount of upload buffer space allocated/used.
    svc$describe_upload_buffer(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    # Returns information about the upload buffer of a gateway including disk
    # IDs and the amount of upload buffer space allocated and used.
    svc$describe_upload_buffer(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    ## End(Not run)
