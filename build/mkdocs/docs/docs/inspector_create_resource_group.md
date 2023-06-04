<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_create_resource_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target

### Description

Creates a resource group using the specified set of tags (key and value
pairs) that are used to select the EC2 instances to be included in an
Amazon Inspector assessment target. The created resource group is then
used to create an Amazon Inspector assessment target. For more
information, see `create_assessment_target`.

### Usage

    inspector_create_resource_group(resourceGroupTags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_create_resource_group_:_resourceGroupTags">resourceGroupTags</code></td>
<td><p>[required] A collection of keys and an array of possible values,
'[{"key":"key1","values":["Value1","Value2"]},{"key":"Key2","values":["Value3"]}]'.</p>
<p>For example,'[{"key":"Name","values":["TestEC2Instance"]}]'.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceGroupArn = "string"
    )

### Request syntax

    svc$create_resource_group(
      resourceGroupTags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # Creates a resource group using the specified set of tags (key and value
    # pairs) that are used to select the EC2 instances to be included in an
    # Amazon Inspector assessment target. The created resource group is then
    # used to create an Amazon Inspector assessment target.
    svc$create_resource_group(
      resourceGroupTags = list(
        list(
          key = "Name",
          value = "example"
        )
      )
    )

    ## End(Not run)
