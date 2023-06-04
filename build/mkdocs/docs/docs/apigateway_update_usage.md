<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_usage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key

### Description

Grants a temporary extension to the remaining quota of a usage plan
associated with a specified API key.

### Usage

    apigateway_update_usage(usagePlanId, keyId, patchOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_update_usage_:_usagePlanId">usagePlanId</code></td>
<td><p>[required] The Id of the usage plan associated with the usage
data.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_update_usage_:_keyId">keyId</code></td>
<td><p>[required] The identifier of the API key associated with the
usage plan in which a temporary extension is granted to the remaining
quota.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_update_usage_:_patchOperations">patchOperations</code></td>
<td><p>For more information about supported patch operations, see <a
href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch
Operations</a>.</p></td>
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

    svc$update_usage(
      usagePlanId = "string",
      keyId = "string",
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
