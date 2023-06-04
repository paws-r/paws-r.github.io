<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_usage_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a usage plan of a given plan identifier

### Description

Gets a usage plan of a given plan identifier.

### Usage

    apigateway_get_usage_plan(usagePlanId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_usage_plan_:_usagePlanId">usagePlanId</code></td>
<td><p>[required] The identifier of the UsagePlan resource to be
retrieved.</p></td>
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

    svc$get_usage_plan(
      usagePlanId = "string"
    )
