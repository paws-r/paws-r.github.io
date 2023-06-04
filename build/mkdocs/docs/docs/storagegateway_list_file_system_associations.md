<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_list_file_system_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of FileSystemAssociationSummary objects

### Description

Gets a list of `FileSystemAssociationSummary` objects. Each object
contains a summary of a file system association. This operation is only
supported for FSx File Gateways.

### Usage

    storagegateway_list_file_system_associations(GatewayARN, Limit, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_list_file_system_associations_:_GatewayARN">GatewayARN</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_list_file_system_associations_:_Limit">Limit</code></td>
<td><p>The maximum number of file system associations to return in the
response. If present, <code>Limit</code> must be an integer with a value
greater than zero. Optional.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_list_file_system_associations_:_Marker">Marker</code></td>
<td><p>Opaque pagination token returned from a previous
<code>list_file_system_associations</code> operation. If present,
<code>Marker</code> specifies where to continue the list from after a
previous call to <code>list_file_system_associations</code>.
Optional.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      NextMarker = "string",
      FileSystemAssociationSummaryList = list(
        list(
          FileSystemAssociationId = "string",
          FileSystemAssociationARN = "string",
          FileSystemAssociationStatus = "string",
          GatewayARN = "string"
        )
      )
    )

### Request syntax

    svc$list_file_system_associations(
      GatewayARN = "string",
      Limit = 123,
      Marker = "string"
    )
