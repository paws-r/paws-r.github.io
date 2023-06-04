<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_usage_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a usage plan of a given plan Id

### Description

Deletes a usage plan of a given plan Id.

### Usage

    apigateway_delete_usage_plan(usagePlanId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_delete_usage_plan_:_usagePlanId">usagePlanId</code></td>
<td><p>[required] The Id of the to-be-deleted usage plan.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_usage_plan(
      usagePlanId = "string"
    )
