<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_usage_plan_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a usage plan key and remove the underlying API key from the associated usage plan

### Description

Deletes a usage plan key and remove the underlying API key from the
associated usage plan.

### Usage

    apigateway_delete_usage_plan_key(usagePlanId, keyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_delete_usage_plan_key_:_usagePlanId">usagePlanId</code></td>
<td><p>[required] The Id of the UsagePlan resource representing the
usage plan containing the to-be-deleted UsagePlanKey resource
representing a plan customer.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_delete_usage_plan_key_:_keyId">keyId</code></td>
<td><p>[required] The Id of the UsagePlanKey resource to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_usage_plan_key(
      usagePlanId = "string",
      keyId = "string"
    )
