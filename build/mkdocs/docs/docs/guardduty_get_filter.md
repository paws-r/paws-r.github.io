<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_get_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details of the filter specified by the filter name

### Description

Returns the details of the filter specified by the filter name.

### Usage

    guardduty_get_filter(DetectorId, FilterName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="guardduty_get_filter_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector that the filter is
associated with.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_get_filter_:_FilterName">FilterName</code></td>
<td><p>[required] The name of the filter you want to get.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Description = "string",
      Action = "NOOP"|"ARCHIVE",
      Rank = 123,
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
      ),
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_filter(
      DetectorId = "string",
      FilterName = "string"
    )
