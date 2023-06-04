<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_get_sampling_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests a sampling quota for rules that the service is using to sample requests

### Description

Requests a sampling quota for rules that the service is using to sample
requests.

### Usage

    xray_get_sampling_targets(SamplingStatisticsDocuments)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="xray_get_sampling_targets_:_SamplingStatisticsDocuments">SamplingStatisticsDocuments</code></td>
<td><p>[required] Information about rules that the service is using to
sample requests.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SamplingTargetDocuments = list(
        list(
          RuleName = "string",
          FixedRate = 123.0,
          ReservoirQuota = 123,
          ReservoirQuotaTTL = as.POSIXct(
            "2015-01-01"
          ),
          Interval = 123
        )
      ),
      LastRuleModification = as.POSIXct(
        "2015-01-01"
      ),
      UnprocessedStatistics = list(
        list(
          RuleName = "string",
          ErrorCode = "string",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$get_sampling_targets(
      SamplingStatisticsDocuments = list(
        list(
          RuleName = "string",
          ClientID = "string",
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          RequestCount = 123,
          SampledCount = 123,
          BorrowCount = 123
        )
      )
    )
