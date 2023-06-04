<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the association of tags from a DAX resource

### Description

Removes the association of tags from a DAX resource. You can call
`untag_resource` up to 5 times per second, per account.

### Usage

    dax_untag_resource(ResourceName, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dax_untag_resource_:_ResourceName">ResourceName</code></td>
<td><p>[required] The name of the DAX resource from which the tags
should be removed.</p></td>
</tr>
<tr class="even">
<td><code id="dax_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of tag keys. If the DAX cluster has any tags
with these keys, then the tags are removed from the cluster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$untag_resource(
      ResourceName = "string",
      TagKeys = list(
        "string"
      )
    )
