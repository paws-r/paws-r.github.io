<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags (keys and values) from an Amazon Macie resource

### Description

Removes one or more tags (keys and values) from an Amazon Macie
resource.

### Usage

    macie2_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="macie2_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] One or more tags (keys) to remove from the resource.
In an HTTP request to remove multiple tags, append the tagKeys parameter
and argument for each tag to remove, separated by an ampersand
(&amp;).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      tagKeys = list(
        "string"
      )
    )
