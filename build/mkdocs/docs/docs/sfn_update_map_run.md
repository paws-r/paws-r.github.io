<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_update_map_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an in-progress Map Run's configuration to include changes to the settings that control maximum concurrency and Map Run failure

### Description

Updates an in-progress Map Run's configuration to include changes to the
settings that control maximum concurrency and Map Run failure.

### Usage

    sfn_update_map_run(mapRunArn, maxConcurrency,
      toleratedFailurePercentage, toleratedFailureCount)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sfn_update_map_run_:_mapRunArn">mapRunArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of a Map Run.</p></td>
</tr>
<tr class="even">
<td><code
id="sfn_update_map_run_:_maxConcurrency">maxConcurrency</code></td>
<td><p>The maximum number of child workflow executions that can be
specified to run in parallel for the Map Run at the same time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sfn_update_map_run_:_toleratedFailurePercentage">toleratedFailurePercentage</code></td>
<td><p>The maximum percentage of failed items before the Map Run
fails.</p></td>
</tr>
<tr class="even">
<td><code
id="sfn_update_map_run_:_toleratedFailureCount">toleratedFailureCount</code></td>
<td><p>The maximum number of failed items before the Map Run
fails.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_map_run(
      mapRunArn = "string",
      maxConcurrency = 123,
      toleratedFailurePercentage = 123.0,
      toleratedFailureCount = 123
    )
