<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_usage_plan_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a usage plan key for adding an existing API key to a usage plan

### Description

Creates a usage plan key for adding an existing API key to a usage plan.

### Usage

    apigateway_create_usage_plan_key(usagePlanId, keyId, keyType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_create_usage_plan_key_:_usagePlanId">usagePlanId</code></td>
<td><p>[required] The Id of the UsagePlan resource representing the
usage plan containing the to-be-created UsagePlanKey resource
representing a plan customer.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_usage_plan_key_:_keyId">keyId</code></td>
<td><p>[required] The identifier of a UsagePlanKey resource for a plan
customer.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_usage_plan_key_:_keyType">keyType</code></td>
<td><p>[required] The type of a UsagePlanKey resource for a plan
customer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      type = "string",
      value = "string",
      name = "string"
    )

### Request syntax

    svc$create_usage_plan_key(
      usagePlanId = "string",
      keyId = "string",
      keyType = "string"
    )
