<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_usage_plans</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets all the usage plans of the caller's account

### Description

Gets all the usage plans of the caller's account.

### Usage

    apigateway_get_usage_plans(position, keyId, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_usage_plans_:_position">position</code></td>
<td><p>The current pagination position in the paged result set.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_usage_plans_:_keyId">keyId</code></td>
<td><p>The identifier of the API key associated with the usage
plans.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_usage_plans_:_limit">limit</code></td>
<td><p>The maximum number of returned results per page. The default
value is 25 and the maximum value is 500.</p></td>
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
      )
    )

### Request syntax

    svc$get_usage_plans(
      position = "string",
      keyId = "string",
      limit = 123
    )
