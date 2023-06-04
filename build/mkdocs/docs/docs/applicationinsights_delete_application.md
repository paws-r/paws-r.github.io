<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_delete_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified application from monitoring

### Description

Removes the specified application from monitoring. Does not delete the
application.

### Usage

    applicationinsights_delete_application(ResourceGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_delete_application_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>[required] The name of the resource group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_application(
      ResourceGroupName = "string"
    )
