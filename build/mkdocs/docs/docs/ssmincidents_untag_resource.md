<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a tag from a resource

### Description

Removes a tag from a resource.

### Usage

    ssmincidents_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the response plan
you're removing a tag from.</p></td>
</tr>
<tr class="even">
<td><code id="ssmincidents_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The name of the tag to remove from the response
plan.</p></td>
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
