<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_rest_api</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified API

### Description

Deletes the specified API.

### Usage

    apigateway_delete_rest_api(restApiId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_delete_rest_api_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_rest_api(
      restApiId = "string"
    )
