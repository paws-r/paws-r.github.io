<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_usage_plan_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a usage plan key of a given key identifier

### Description

Gets a usage plan key of a given key identifier.

### Usage

    apigateway_get_usage_plan_key(usagePlanId, keyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_usage_plan_key_:_usagePlanId">usagePlanId</code></td>
<td><p>[required] The Id of the UsagePlan resource representing the
usage plan containing the to-be-retrieved UsagePlanKey resource
representing a plan customer.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_usage_plan_key_:_keyId">keyId</code></td>
<td><p>[required] The key Id of the to-be-retrieved UsagePlanKey
resource representing a plan customer.</p></td>
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

    svc$get_usage_plan_key(
      usagePlanId = "string",
      keyId = "string"
    )
