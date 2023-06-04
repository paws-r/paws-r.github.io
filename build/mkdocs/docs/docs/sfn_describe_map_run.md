<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_describe_map_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about a Map Run's configuration, progress, and results

### Description

Provides information about a Map Run's configuration, progress, and
results. For more information, see [Examining Map
Run](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-examine-map-run.html)
in the *Step Functions Developer Guide*.

### Usage

    sfn_describe_map_run(mapRunArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sfn_describe_map_run_:_mapRunArn">mapRunArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies a Map
Run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      mapRunArn = "string",
      executionArn = "string",
      status = "RUNNING"|"SUCCEEDED"|"FAILED"|"ABORTED",
      startDate = as.POSIXct(
        "2015-01-01"
      ),
      stopDate = as.POSIXct(
        "2015-01-01"
      ),
      maxConcurrency = 123,
      toleratedFailurePercentage = 123.0,
      toleratedFailureCount = 123,
      itemCounts = list(
        pending = 123,
        running = 123,
        succeeded = 123,
        failed = 123,
        timedOut = 123,
        aborted = 123,
        total = 123,
        resultsWritten = 123
      ),
      executionCounts = list(
        pending = 123,
        running = 123,
        succeeded = 123,
        failed = 123,
        timedOut = 123,
        aborted = 123,
        total = 123,
        resultsWritten = 123
      )
    )

### Request syntax

    svc$describe_map_run(
      mapRunArn = "string"
    )
