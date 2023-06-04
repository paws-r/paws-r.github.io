<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all tags for a specified Amazon QLDB resource

### Description

Returns all tags for a specified Amazon QLDB resource.

### Usage

    qldb_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="qldb_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for which to list the
tags. For example:</p>
<p><code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code></p></td>
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
