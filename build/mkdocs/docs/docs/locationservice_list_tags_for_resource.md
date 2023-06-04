<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of tags that are applied to the specified Amazon Location resource

### Description

Returns a list of tags that are applied to the specified Amazon Location
resource.

### Usage

    locationservice_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource whose
tags you want to retrieve.</p>
<ul>
<li><p>Format example:
<code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string"
    )
