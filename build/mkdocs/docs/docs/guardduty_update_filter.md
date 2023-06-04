<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_update_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the filter specified by the filter name

### Description

Updates the filter specified by the filter name.

### Usage

    guardduty_update_filter(DetectorId, FilterName, Description, Action,
      Rank, FindingCriteria)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_update_filter_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector that specifies the
GuardDuty service where you want to update a filter.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_update_filter_:_FilterName">FilterName</code></td>
<td><p>[required] The name of the filter.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_update_filter_:_Description">Description</code></td>
<td><p>The description of the filter. Valid characters include
alphanumeric characters, and special characters such as hyphen, period,
colon, underscore, parentheses (<code>{ }</code>, <code
style="white-space: pre;">⁠[ ]⁠</code>, and <code
style="white-space: pre;">⁠( )⁠</code>), forward slash, horizontal tab,
vertical tab, newline, form feed, return, and whitespace.</p>
<p>[ ]: R:%20</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_update_filter_:_Action">Action</code></td>
<td><p>Specifies the action that is to be applied to the findings that
match the filter.</p></td>
</tr>
<tr class="odd">
<td><code id="guardduty_update_filter_:_Rank">Rank</code></td>
<td><p>Specifies the position of the filter in the list of current
filters. Also specifies the order in which this filter is applied to the
findings.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_update_filter_:_FindingCriteria">FindingCriteria</code></td>
<td><p>Represents the criteria to be used in the filter for querying
findings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$update_filter(
      DetectorId = "string",
      FilterName = "string",
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
      )
    )
