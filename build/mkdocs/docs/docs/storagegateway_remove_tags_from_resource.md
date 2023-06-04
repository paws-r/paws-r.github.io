<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_remove_tags_from_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from the specified resource

### Description

Removes one or more tags from the specified resource. This operation is
supported in storage gateways of all types.

### Usage

    storagegateway_remove_tags_from_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_remove_tags_from_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource you
want to remove the tags from.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_remove_tags_from_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The keys of the tags you want to remove from the
specified resource. A tag is composed of a key-value pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceARN = "string"
    )

### Request syntax

    svc$remove_tags_from_resource(
      ResourceARN = "string",
      TagKeys = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # Lists the iSCSI stored volumes of a gateway. Removes one or more tags
    # from the specified resource.
    svc$remove_tags_from_resource(
      ResourceARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B",
      TagKeys = list(
        "Dev Gatgeway Region",
        "East Coast"
      )
    )

    ## End(Not run)
