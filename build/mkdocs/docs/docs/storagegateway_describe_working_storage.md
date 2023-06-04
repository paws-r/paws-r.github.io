<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_working_storage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the working storage of a gateway

### Description

Returns information about the working storage of a gateway. This
operation is only supported in the stored volumes gateway type. This
operation is deprecated in cached volumes API version (20120630). Use
DescribeUploadBuffer instead.

Working storage is also referred to as upload buffer. You can also use
the DescribeUploadBuffer operation to add upload buffer to a stored
volume gateway.

The response includes disk IDs that are configured as working storage,
and it includes the amount of working storage allocated and used.

### Usage

    storagegateway_describe_working_storage(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_working_storage_:_GatewayARN">GatewayARN</code></td>
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
      WorkingStorageUsedInBytes = 123,
      WorkingStorageAllocatedInBytes = 123
    )

### Request syntax

    svc$describe_working_storage(
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # This operation is supported only for the gateway-stored volume
    # architecture. This operation is deprecated in cached-volumes API version
    # (20120630). Use DescribeUploadBuffer instead.
    svc$describe_working_storage(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    ## End(Not run)
