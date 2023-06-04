<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags to a specified Amazon QLDB resource

### Description

Adds one or more tags to a specified Amazon QLDB resource.

A resource can have up to 50 tags. If you try to create more than 50
tags for a resource, your request fails and returns an error.

### Usage

    qldb_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="qldb_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) to which you want to
add the tags. For example:</p>
<p><code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code></p></td>
</tr>
<tr class="even">
<td><code id="qldb_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The key-value pairs to add as tags to the specified
QLDB resource. Tag keys are case sensitive. If you specify a key that
already exists for the resource, your request fails and returns an
error. Tag values are case sensitive and can be null.</p></td>
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
