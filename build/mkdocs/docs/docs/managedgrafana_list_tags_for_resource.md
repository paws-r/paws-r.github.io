<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The ListTagsForResource operation returns the tags that are associated with the Amazon Managed Service for Grafana resource specified by the resourceArn

### Description

The `list_tags_for_resource` operation returns the tags that are
associated with the Amazon Managed Service for Grafana resource
specified by the `resourceArn`. Currently, the only resource that can be
tagged is a workspace.

### Usage

    managedgrafana_list_tags_for_resource(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="managedgrafana_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource the list of tags are
associated with.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      resourceArn = "string"
    )
