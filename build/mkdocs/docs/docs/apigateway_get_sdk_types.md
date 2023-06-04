<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_sdk_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets SDK types

### Description

Gets SDK types

### Usage

    apigateway_get_sdk_types(position, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_sdk_types_:_position">position</code></td>
<td><p>The current pagination position in the paged result set.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_sdk_types_:_limit">limit</code></td>
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
          friendlyName = "string",
          description = "string",
          configurationProperties = list(
            list(
              name = "string",
              friendlyName = "string",
              description = "string",
              required = TRUE|FALSE,
              defaultValue = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_sdk_types(
      position = "string",
      limit = 123
    )
