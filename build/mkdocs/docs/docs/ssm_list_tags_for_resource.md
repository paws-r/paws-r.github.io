<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the tags assigned to the specified resource

### Description

Returns a list of the tags assigned to the specified resource.

For information about the ID format for each supported resource type,
see `add_tags_to_resource`.

### Usage

    ssm_list_tags_for_resource(ResourceType, ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_list_tags_for_resource_:_ResourceType">ResourceType</code></td>
<td><p>[required] Returns a list of tags for a specific resource
type.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_tags_for_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The resource ID for which you want to see a list of
tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceType = "Document"|"ManagedInstance"|"MaintenanceWindow"|"Parameter"|"PatchBaseline"|"OpsItem"|"OpsMetadata"|"Automation"|"Association",
      ResourceId = "string"
    )
