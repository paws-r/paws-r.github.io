<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns one or more tags (key-value pairs) to the specified Amazon Location Service resource

### Description

Assigns one or more tags (key-value pairs) to the specified Amazon
Location Service resource.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions, by granting a user permission to
access or change only resources with certain tag values.

You can use the `tag_resource` operation with an Amazon Location Service
resource that already has tags. If you specify a new tag key for the
resource, this tag is appended to the tags already associated with the
resource. If you specify a tag key that's already associated with the
resource, the new tag value that you specify replaces the previous value
for that tag.

You can associate up to 50 tags with a resource.

### Usage

    locationservice_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource whose
tags you want to update.</p>
<ul>
<li><p>Format example:
<code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="locationservice_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] Applies one or more tags to specific resource. A tag
is a key-value pair that helps you manage, identify, search, and filter
your resources.</p>
<p>Format: <code>"key" : "value"</code></p>
<p>Restrictions:</p>
<ul>
<li><p>Maximum 50 tags per resource.</p></li>
<li><p>Each tag key must be unique and must have exactly one associated
value.</p></li>
<li><p>Maximum key length: 128 Unicode characters in UTF-8.</p></li>
<li><p>Maximum value length: 256 Unicode characters in UTF-8.</p></li>
<li><p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the
following characters: + - = . _ : / @</p></li>
<li><p>Cannot use "aws:" as a prefix for a key.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        "string"
      )
    )
