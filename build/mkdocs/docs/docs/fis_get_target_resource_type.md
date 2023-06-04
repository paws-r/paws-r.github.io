<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fis_get_target_resource_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the specified resource type

### Description

Gets information about the specified resource type.

### Usage

    fis_get_target_resource_type(resourceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fis_get_target_resource_type_:_resourceType">resourceType</code></td>
<td><p>[required] The resource type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      targetResourceType = list(
        resourceType = "string",
        description = "string",
        parameters = list(
          list(
            description = "string",
            required = TRUE|FALSE
          )
        )
      )
    )

### Request syntax

    svc$get_target_resource_type(
      resourceType = "string"
    )
