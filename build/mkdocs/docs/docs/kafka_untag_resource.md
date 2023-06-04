<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the tags associated with the keys that are provided in the query

### Description

Removes the tags associated with the keys that are provided in the
query.

### Usage

    kafka_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies the resource that's associated with the tags.</p></td>
</tr>
<tr class="even">
<td><code id="kafka_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] Tag keys must be unique for a given cluster. In
addition, the following restrictions apply:</p>
<ul>
<li><p>Each tag key must be unique. If you add a tag with a key that's
already in use, your new tag overwrites the existing key-value
pair.</p></li>
<li><p>You can't start a tag key with aws: because this prefix is
reserved for use by AWS. AWS creates tags that begin with this prefix on
your behalf, but you can't edit or delete them.</p></li>
<li><p>Tag keys must be between 1 and 128 Unicode characters in
length.</p></li>
<li><p>Tag keys must consist of the following characters: Unicode
letters, digits, white space, and the following special characters: _ .
/ = + - @.</p></li>
</ul></td>
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
