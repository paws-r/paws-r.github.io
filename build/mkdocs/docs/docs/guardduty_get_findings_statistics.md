<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_get_findings_statistics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists Amazon GuardDuty findings statistics for the specified detector ID

### Description

Lists Amazon GuardDuty findings statistics for the specified detector
ID.

### Usage

    guardduty_get_findings_statistics(DetectorId, FindingStatisticTypes,
      FindingCriteria)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_get_findings_statistics_:_DetectorId">DetectorId</code></td>
<td><p>[required] The ID of the detector that specifies the GuardDuty
service whose findings' statistics you want to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_get_findings_statistics_:_FindingStatisticTypes">FindingStatisticTypes</code></td>
<td><p>[required] The types of finding statistics to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_get_findings_statistics_:_FindingCriteria">FindingCriteria</code></td>
<td><p>Represents the criteria that is used for querying
findings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FindingStatistics = list(
        CountBySeverity = list(
          123
        )
      )
    )

### Request syntax

    svc$get_findings_statistics(
      DetectorId = "string",
      FindingStatisticTypes = list(
        "COUNT_BY_SEVERITY"
      ),
      FindingCriteria = list(
        Criterion = list(
          list(
            Eq = list(
              "string"
            ),
            Neq = list(
              "string"
            ),
            Gt = 123,
            Gte = 123,
            Lt = 123,
            Lte = 123,
            Equals = list(
              "string"
            ),
            NotEquals = list(
              "string"
            ),
            GreaterThan = 123,
            GreaterThanOrEqual = 123,
            LessThan = 123,
            LessThanOrEqual = 123
          )
        )
      )
    )
