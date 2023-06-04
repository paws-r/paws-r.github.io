<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_disassociate_attribute_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates an attribute group from an application to remove the extra attributes contained in the attribute group from the application's metadata

### Description

Disassociates an attribute group from an application to remove the extra
attributes contained in the attribute group from the application's
metadata. This operation reverts `associate_attribute_group`.

### Usage

    appregistry_disassociate_attribute_group(application, attributeGroup)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_disassociate_attribute_group_:_application">application</code></td>
<td><p>[required] The name, ID, or ARN of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appregistry_disassociate_attribute_group_:_attributeGroup">attributeGroup</code></td>
<td><p>[required] The name, ID, or ARN of the attribute group that holds
the attributes to describe the application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      applicationArn = "string",
      attributeGroupArn = "string"
    )

### Request syntax

    svc$disassociate_attribute_group(
      application = "string",
      attributeGroup = "string"
    )
