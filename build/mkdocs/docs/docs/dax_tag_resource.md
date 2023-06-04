<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a set of tags with a DAX resource

### Description

Associates a set of tags with a DAX resource. You can call
`tag_resource` up to 5 times per second, per account.

### Usage

    dax_tag_resource(ResourceName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dax_tag_resource_:_ResourceName">ResourceName</code></td>
<td><p>[required] The name of the DAX resource to which tags should be
added.</p></td>
</tr>
<tr class="even">
<td><code id="dax_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to be assigned to the DAX resource.</p></td>
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

    svc$tag_resource(
      ResourceName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
