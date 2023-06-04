<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_api_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the ApiKey resource

### Description

Deletes the ApiKey resource.

### Usage

    apigateway_delete_api_key(apiKey)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_delete_api_key_:_apiKey">apiKey</code></td>
<td><p>[required] The identifier of the ApiKey resource to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_api_key(
      apiKey = "string"
    )
