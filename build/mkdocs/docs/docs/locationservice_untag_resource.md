<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from the specified Amazon Location resource

### Description

Removes one or more tags from the specified Amazon Location resource.

### Usage

    locationservice_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource from
which you want to remove tags.</p>
<ul>
<li><p>Format example:
<code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="locationservice_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The list of tag keys to remove from the specified
resource.</p></td>
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
