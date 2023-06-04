<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_create_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a custom component by grouping similar standalone instances to monitor

### Description

Creates a custom component by grouping similar standalone instances to
monitor.

### Usage

    applicationinsights_create_component(ResourceGroupName, ComponentName,
      ResourceList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_create_component_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>[required] The name of the resource group.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_create_component_:_ComponentName">ComponentName</code></td>
<td><p>[required] The name of the component.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_create_component_:_ResourceList">ResourceList</code></td>
<td><p>[required] The list of resource ARNs that belong to the
component.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_component(
      ResourceGroupName = "string",
      ComponentName = "string",
      ResourceList = list(
        "string"
      )
    )
