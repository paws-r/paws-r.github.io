<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns a set of key-value pairs to a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN)

### Description

Assigns a set of key-value pairs to a recovery point, backup plan, or
backup vault identified by an Amazon Resource Name (ARN).

### Usage

    backup_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="backup_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] An ARN that uniquely identifies a resource. The format
of the ARN depends on the type of the tagged resource.</p></td>
</tr>
<tr class="even">
<td><code id="backup_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] Key-value pairs that are used to help organize your
resources. You can assign your own metadata to the resources you create.
For clarity, this is the structure to assign tags: <code
style="white-space: pre;">⁠[{"Key":"string","Value":"string"}]⁠</code>.</p></td>
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
