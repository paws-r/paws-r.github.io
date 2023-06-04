<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_list_local_disks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the gateway's local disks

### Description

Returns a list of the gateway's local disks. To specify which gateway to
describe, you use the Amazon Resource Name (ARN) of the gateway in the
body of the request.

The request returns a list of all disks, specifying which are configured
as working storage, cache storage, or stored volume or not configured at
all. The response includes a `DiskStatus` field. This field can have a
value of present (the disk is available to use), missing (the disk is no
longer connected to the gateway), or mismatch (the disk node is occupied
by a disk that has incorrect metadata or the disk content is corrupted).

### Usage

    storagegateway_list_local_disks(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_list_local_disks_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string",
      Disks = list(
        list(
          DiskId = "string",
          DiskPath = "string",
          DiskNode = "string",
          DiskStatus = "string",
          DiskSizeInBytes = 123,
          DiskAllocationType = "string",
          DiskAllocationResource = "string",
          DiskAttributeList = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$list_local_disks(
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # The request returns a list of all disks, specifying which are configured
    # as working storage, cache storage, or stored volume or not configured at
    # all.
    svc$list_local_disks(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    ## End(Not run)
