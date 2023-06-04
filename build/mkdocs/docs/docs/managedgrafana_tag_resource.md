<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The TagResource operation associates tags with an Amazon Managed Grafana resource

### Description

The `tag_resource` operation associates tags with an Amazon Managed
Grafana resource. Currently, the only resource that can be tagged is
workspaces.

If you specify a new tag key for the resource, this tag is appended to
the list of tags associated with the resource. If you specify a tag key
that is already associated with the resource, the new tag value that you
specify replaces the previous value for that tag.

### Usage

    managedgrafana_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="managedgrafana_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource the tag is associated
with.</p></td>
</tr>
<tr class="even">
<td><code id="managedgrafana_tag_resource_:_tags">tags</code></td>
<td><p>[required] The list of tag keys and values to associate with the
resource. You can associate tag keys only, tags (key and values) only or
a combination of tag keys and tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        "string"
      )
    )
