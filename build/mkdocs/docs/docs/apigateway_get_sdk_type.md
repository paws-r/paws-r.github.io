<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_sdk_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an SDK type

### Description

Gets an SDK type.

### Usage

    apigateway_get_sdk_type(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_sdk_type_:_id">id</code></td>
<td><p>[required] The identifier of the queried SdkType
instance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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

### Request syntax

    svc$get_sdk_type(
      id = "string"
    )
