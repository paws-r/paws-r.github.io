<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes information about the current Account resource

### Description

Changes information about the current Account resource.

### Usage

    apigateway_update_account(patchOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_update_account_:_patchOperations">patchOperations</code></td>
<td><p>For more information about supported patch operations, see <a
href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch
Operations</a>.</p></td>
</tr>
</tbody>
</table>

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

    svc$update_account(
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
