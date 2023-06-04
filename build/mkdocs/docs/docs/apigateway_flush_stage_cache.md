<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_flush_stage_cache</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Flushes a stage's cache

### Description

Flushes a stage's cache.

### Usage

    apigateway_flush_stage_cache(restApiId, stageName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_flush_stage_cache_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_flush_stage_cache_:_stageName">stageName</code></td>
<td><p>[required] The name of the stage to flush its cache.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$flush_stage_cache(
      restApiId = "string",
      stageName = "string"
    )
