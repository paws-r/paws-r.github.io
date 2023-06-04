<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_update_attribute_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing attribute group with new details

### Description

Updates an existing attribute group with new details.

### Usage

    appregistry_update_attribute_group(attributeGroup, name, description,
      attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_update_attribute_group_:_attributeGroup">attributeGroup</code></td>
<td><p>[required] The name, ID, or ARN of the attribute group that holds
the attributes to describe the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appregistry_update_attribute_group_:_name">name</code></td>
<td><p>Deprecated: The new name of the attribute group. The name must be
unique in the region in which you are updating the attribute group.
Please do not use this field as we have stopped supporting name
updates.</p></td>
</tr>
<tr class="odd">
<td><code
id="appregistry_update_attribute_group_:_description">description</code></td>
<td><p>The description of the attribute group that the user
provides.</p></td>
</tr>
<tr class="even">
<td><code
id="appregistry_update_attribute_group_:_attributes">attributes</code></td>
<td><p>A JSON string in the form of nested key-value pairs that
represent the attributes in the group and describes an application and
its components.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      attributeGroup = list(
        id = "string",
        arn = "string",
        name = "string",
        description = "string",
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdateTime = as.POSIXct(
          "2015-01-01"
        ),
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$update_attribute_group(
      attributeGroup = "string",
      name = "string",
      description = "string",
      attributes = "string"
    )
