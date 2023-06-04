<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_delete_attribute_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an attribute group, specified either by its attribute group ID, name, or ARN

### Description

Deletes an attribute group, specified either by its attribute group ID,
name, or ARN.

### Usage

    appregistry_delete_attribute_group(attributeGroup)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_delete_attribute_group_:_attributeGroup">attributeGroup</code></td>
<td><p>[required] The name, ID, or ARN of the attribute group that holds
the attributes to describe the application.</p></td>
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
        createdBy = "string"
      )
    )

### Request syntax

    svc$delete_attribute_group(
      attributeGroup = "string"
    )
