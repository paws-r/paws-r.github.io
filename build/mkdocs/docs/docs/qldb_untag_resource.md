<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from a specified Amazon QLDB resource

### Description

Removes one or more tags from a specified Amazon QLDB resource. You can
specify up to 50 tag keys to remove.

### Usage

    qldb_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="qldb_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) from which to remove
the tags. For example:</p>
<p><code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code></p></td>
</tr>
<tr class="even">
<td><code id="qldb_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The list of tag keys to remove.</p></td>
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
