<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_file_system_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the file system association information

### Description

Gets the file system association information. This operation is only
supported for FSx File Gateways.

### Usage

    storagegateway_describe_file_system_associations(
      FileSystemAssociationARNList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_file_system_associations_:_FileSystemAssociationARNList">FileSystemAssociationARNList</code></td>
<td><p>[required] An array containing the Amazon Resource Name (ARN) of
each file system association to be described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileSystemAssociationInfoList = list(
        list(
          FileSystemAssociationARN = "string",
          LocationARN = "string",
          FileSystemAssociationStatus = "string",
          AuditDestinationARN = "string",
          GatewayARN = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          CacheAttributes = list(
            CacheStaleTimeoutInSeconds = 123
          ),
          EndpointNetworkConfiguration = list(
            IpAddresses = list(
              "string"
            )
          ),
          FileSystemAssociationStatusDetails = list(
            list(
              ErrorCode = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_file_system_associations(
      FileSystemAssociationARNList = list(
        "string"
      )
    )
