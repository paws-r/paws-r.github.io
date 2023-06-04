<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a specific tag associated with an Amazon Translate resource

### Description

Removes a specific tag associated with an Amazon Translate resource. For
more information, see [Tagging your
resources](https://docs.aws.amazon.com/translate/latest/dg/tagging.html).

### Usage

    translate_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="translate_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the given Amazon
Translate resource from which you want to remove the tags.</p></td>
</tr>
<tr class="even">
<td><code id="translate_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The initial part of a key-value pair that forms a tag
being removed from a given resource. Keys must be unique and cannot be
duplicated for a particular resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
