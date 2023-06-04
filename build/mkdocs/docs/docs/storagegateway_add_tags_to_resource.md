<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_add_tags_to_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags to the specified resource

### Description

Adds one or more tags to the specified resource. You use tags to add
metadata to resources, which you can use to categorize these resources.
For example, you can categorize resources by purpose, owner,
environment, or team. Each tag consists of a key and a value, which you
define. You can add tags to the following Storage Gateway resources:

-   Storage gateways of all types

-   Storage volumes

-   Virtual tapes

-   NFS and SMB file shares

-   File System associations

You can create a maximum of 50 tags for each resource. Virtual tapes and
storage volumes that are recovered to a new gateway maintain their tags.

### Usage

    storagegateway_add_tags_to_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_add_tags_to_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource you
want to add tags to.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_add_tags_to_resource_:_Tags">Tags</code></td>
<td><p>[required] The key-value pair that represents the tag you want to
add to the resource. The value can be an empty string.</p>
<p>Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: + -
= . _ : / @. The maximum length of a tag's key is 128 characters, and
the maximum length for a tag's value is 256.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceARN = "string"
    )

### Request syntax

    svc$add_tags_to_resource(
      ResourceARN = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # Adds one or more tags to the specified resource.
    svc$add_tags_to_resource(
      ResourceARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B",
      Tags = list(
        list(
          Key = "Dev Gatgeway Region",
          Value = "East Coast"
        )
      )
    )

    ## End(Not run)
