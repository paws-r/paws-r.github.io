<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>keyspaces_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the association of tags from a Amazon Keyspaces resource

### Description

Removes the association of tags from a Amazon Keyspaces resource.

### Usage

    keyspaces_untag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="keyspaces_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Keyspaces resource that the tags will be
removed from. This value is an Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code id="keyspaces_untag_resource_:_tags">tags</code></td>
<td><p>[required] A list of existing tags to be removed from the Amazon
Keyspaces resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
