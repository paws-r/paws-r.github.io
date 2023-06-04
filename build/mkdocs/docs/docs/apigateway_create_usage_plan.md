<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_usage_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload

### Description

Creates a usage plan with the throttle and quota limits, as well as the
associated API stages, specified in the payload.

### Usage

    apigateway_create_usage_plan(name, description, apiStages, throttle,
      quota, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_create_usage_plan_:_name">name</code></td>
<td><p>[required] The name of the usage plan.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_usage_plan_:_description">description</code></td>
<td><p>The description of the usage plan.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_usage_plan_:_apiStages">apiStages</code></td>
<td><p>The associated API stages of the usage plan.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_usage_plan_:_throttle">throttle</code></td>
<td><p>The throttling limits of the usage plan.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_create_usage_plan_:_quota">quota</code></td>
<td><p>The quota of the usage plan.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_create_usage_plan_:_tags">tags</code></td>
<td><p>The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with <code style="white-space: pre;">⁠aws:⁠</code>. The tag value
can be up to 256 characters.</p></td>
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

    svc$create_usage_plan(
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
      tags = list(
        "string"
      )
    )
