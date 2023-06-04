<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_delete_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Ungroups a custom component

### Description

Ungroups a custom component. When you ungroup custom components, all
applicable monitors that are set up for the component are removed and
the instances revert to their standalone status.

### Usage

    applicationinsights_delete_component(ResourceGroupName, ComponentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_delete_component_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>[required] The name of the resource group.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_delete_component_:_ComponentName">ComponentName</code></td>
<td><p>[required] The name of the component.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_component(
      ResourceGroupName = "string",
      ComponentName = "string"
    )
