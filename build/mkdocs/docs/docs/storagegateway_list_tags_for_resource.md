<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags that have been added to the specified resource

### Description

Lists the tags that have been added to the specified resource. This
operation is supported in storage gateways of all types.

### Usage

    storagegateway_list_tags_for_resource(ResourceARN, Marker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource for
which you want to list tags.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_list_tags_for_resource_:_Marker">Marker</code></td>
<td><p>An opaque string that indicates the position at which to begin
returning the list of tags.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_list_tags_for_resource_:_Limit">Limit</code></td>
<td><p>Specifies that the list of tags returned be limited to the
specified number of items.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceARN = "string",
      Marker = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceARN = "string",
      Marker = "string",
      Limit = 123
    )

### Examples

    ## Not run: 
    # Lists the tags that have been added to the specified resource.
    svc$list_tags_for_resource(
      Limit = 1L,
      Marker = "1",
      ResourceARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B"
    )

    ## End(Not run)
