<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the current Account resource

### Description

Gets information about the current Account resource.

### Usage

    apigateway_get_account()

### Value

A list with the following syntax:

    list(
      cloudwatchRoleArn = "string",
      throttleSettings = list(
        burstLimit = 123,
        rateLimit = 123.0
      ),
      features = list(
        "string"
      ),
      apiKeyVersion = "string"
    )

### Request syntax

    svc$get_account()
