<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_update_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the custom component name and/or the list of resources that make up the component

### Description

Updates the custom component name and/or the list of resources that make
up the component.

### Usage

    applicationinsights_update_component(ResourceGroupName, ComponentName,
      NewComponentName, ResourceList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_update_component_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>[required] The name of the resource group.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_update_component_:_ComponentName">ComponentName</code></td>
<td><p>[required] The name of the component.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_update_component_:_NewComponentName">NewComponentName</code></td>
<td><p>The new name of the component.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_update_component_:_ResourceList">ResourceList</code></td>
<td><p>The list of resource ARNs that belong to the component.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_component(
      ResourceGroupName = "string",
      ComponentName = "string",
      NewComponentName = "string",
      ResourceList = list(
        "string"
      )
    )
