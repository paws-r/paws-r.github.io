<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_delete_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes tags from a resource

### Description

Deletes tags from a resource. You must provide the ARN of the resource
from which you want to delete the tag or tags.

### Usage

    redshift_delete_tags(ResourceName, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_delete_tags_:_ResourceName">ResourceName</code></td>
<td><p>[required] The Amazon Resource Name (ARN) from which you want to
remove the tag or tags. For example,
<code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_delete_tags_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag key that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_tags(
      ResourceName = "string",
      TagKeys = list(
        "string"
      )
    )
