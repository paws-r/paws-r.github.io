<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_test_metric_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tests the filter pattern of a metric filter against a sample of log event messages

### Description

Tests the filter pattern of a metric filter against a sample of log
event messages. You can use this operation to validate the correctness
of a metric filter pattern.

### Usage

    cloudwatchlogs_test_metric_filter(filterPattern, logEventMessages)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_test_metric_filter_:_filterPattern">filterPattern</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_test_metric_filter_:_logEventMessages">logEventMessages</code></td>
<td><p>[required] The log event messages to test.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      matches = list(
        list(
          eventNumber = 123,
          eventMessage = "string",
          extractedValues = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$test_metric_filter(
      filterPattern = "string",
      logEventMessages = list(
        "string"
      )
    )
