<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_usage_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a usage plan of a given plan Id

### Description

Updates a usage plan of a given plan Id.

### Usage

    apigateway_update_usage_plan(usagePlanId, patchOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_update_usage_plan_:_usagePlanId">usagePlanId</code></td>
<td><p>[required] The Id of the to-be-updated usage plan.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_update_usage_plan_:_patchOperations">patchOperations</code></td>
<td><p>For more information about supported patch operations, see <a
href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch
Operations</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      name = "string",
      description = "string",
      apiStages = list(
        list(
          apiId = "string",
          stage = "string",
          throttle = list(
            list(
              burstLimit = 123,
              rateLimit = 123.0
            )
          )
        )
      ),
      throttle = list(
        burstLimit = 123,
        rateLimit = 123.0
      ),
      quota = list(
        limit = 123,
        offset = 123,
        period = "DAY"|"WEEK"|"MONTH"
      ),
      productCode = "string",
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$update_usage_plan(
      usagePlanId = "string",
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
