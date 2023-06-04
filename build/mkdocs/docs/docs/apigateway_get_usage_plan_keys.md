<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_usage_plan_keys</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets all the usage plan keys representing the API keys added to a specified usage plan

### Description

Gets all the usage plan keys representing the API keys added to a
specified usage plan.

### Usage

    apigateway_get_usage_plan_keys(usagePlanId, position, limit, nameQuery)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_usage_plan_keys_:_usagePlanId">usagePlanId</code></td>
<td><p>[required] The Id of the UsagePlan resource representing the
usage plan containing the to-be-retrieved UsagePlanKey resource
representing a plan customer.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_usage_plan_keys_:_position">position</code></td>
<td><p>The current pagination position in the paged result set.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_usage_plan_keys_:_limit">limit</code></td>
<td><p>The maximum number of returned results per page. The default
value is 25 and the maximum value is 500.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_usage_plan_keys_:_nameQuery">nameQuery</code></td>
<td><p>A query parameter specifying the name of the to-be-returned usage
plan keys.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      position = "string",
      items = list(
        list(
          id = "string",
          type = "string",
          value = "string",
          name = "string"
        )
      )
    )

### Request syntax

    svc$get_usage_plan_keys(
      usagePlanId = "string",
      position = "string",
      limit = 123,
      nameQuery = "string"
    )
