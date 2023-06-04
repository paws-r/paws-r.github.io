<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_describe_node</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a node

### Description

Returns information about a node.

### Usage

    panorama_describe_node(NodeId, OwnerAccount)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="panorama_describe_node_:_NodeId">NodeId</code></td>
<td><p>[required] The node's ID.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_describe_node_:_OwnerAccount">OwnerAccount</code></td>
<td><p>The account ID of the node's owner.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssetName = "string",
      Category = "BUSINESS_LOGIC"|"ML_MODEL"|"MEDIA_SOURCE"|"MEDIA_SINK",
      CreatedTime = as.POSIXct(
        "2015-01-01"
      ),
      Description = "string",
      LastUpdatedTime = as.POSIXct(
        "2015-01-01"
      ),
      Name = "string",
      NodeId = "string",
      NodeInterface = list(
        Inputs = list(
          list(
            DefaultValue = "string",
            Description = "string",
            MaxConnections = 123,
            Name = "string",
            Type = "BOOLEAN"|"STRING"|"INT32"|"FLOAT32"|"MEDIA"
          )
        ),
        Outputs = list(
          list(
            Description = "string",
            Name = "string",
            Type = "BOOLEAN"|"STRING"|"INT32"|"FLOAT32"|"MEDIA"
          )
        )
      ),
      OwnerAccount = "string",
      PackageArn = "string",
      PackageId = "string",
      PackageName = "string",
      PackageVersion = "string",
      PatchVersion = "string"
    )

### Request syntax

    svc$describe_node(
      NodeId = "string",
      OwnerAccount = "string"
    )
