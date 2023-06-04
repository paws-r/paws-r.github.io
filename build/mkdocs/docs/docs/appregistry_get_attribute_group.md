<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_get_attribute_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves an attribute group by its ARN, ID, or name

### Description

Retrieves an attribute group by its ARN, ID, or name. The attribute
group can be specified by its ARN, ID, or name.

### Usage

    appregistry_get_attribute_group(attributeGroup)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_get_attribute_group_:_attributeGroup">attributeGroup</code></td>
<td><p>[required] The name, ID, or ARN of the attribute group that holds
the attributes to describe the application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      arn = "string",
      name = "string",
      description = "string",
      attributes = "string",
      creationTime = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdateTime = as.POSIXct(
        "2015-01-01"
      ),
      tags = list(
        "string"
      ),
      createdBy = "string"
    )

### Request syntax

    svc$get_attribute_group(
      attributeGroup = "string"
    )
