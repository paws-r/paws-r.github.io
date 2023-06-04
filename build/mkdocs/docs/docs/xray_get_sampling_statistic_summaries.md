<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_get_sampling_statistic_summaries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about recent sampling results for all sampling rules

### Description

Retrieves information about recent sampling results for all sampling
rules.

### Usage

    xray_get_sampling_statistic_summaries(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="xray_get_sampling_statistic_summaries_:_NextToken">NextToken</code></td>
<td><p>Pagination token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SamplingStatisticSummaries = list(
        list(
          RuleName = "string",
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          RequestCount = 123,
          BorrowCount = 123,
          SampledCount = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_sampling_statistic_summaries(
      NextToken = "string"
    )
