<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_usage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the usage data of a usage plan in a specified time interval

### Description

Gets the usage data of a usage plan in a specified time interval.

### Usage

    apigateway_get_usage(usagePlanId, keyId, startDate, endDate, position,
      limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_usage_:_usagePlanId">usagePlanId</code></td>
<td><p>[required] The Id of the usage plan associated with the usage
data.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_usage_:_keyId">keyId</code></td>
<td><p>The Id of the API key associated with the resultant usage
data.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_usage_:_startDate">startDate</code></td>
<td><p>[required] The starting date (e.g., 2016-01-01) of the usage
data.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_usage_:_endDate">endDate</code></td>
<td><p>[required] The ending date (e.g., 2016-12-31) of the usage
data.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_usage_:_position">position</code></td>
<td><p>The current pagination position in the paged result set.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_usage_:_limit">limit</code></td>
<td><p>The maximum number of returned results per page. The default
value is 25 and the maximum value is 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      usagePlanId = "string",
      startDate = "string",
      endDate = "string",
      position = "string",
      items = list(
        list(
          list(
            123
          )
        )
      )
    )

### Request syntax

    svc$get_usage(
      usagePlanId = "string",
      keyId = "string",
      startDate = "string",
      endDate = "string",
      position = "string",
      limit = 123
    )
