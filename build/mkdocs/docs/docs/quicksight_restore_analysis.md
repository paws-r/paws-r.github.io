<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_restore_analysis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores an analysis

### Description

Restores an analysis.

### Usage

    quicksight_restore_analysis(AwsAccountId, AnalysisId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_restore_analysis_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the analysis.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_restore_analysis_:_AnalysisId">AnalysisId</code></td>
<td><p>[required] The ID of the analysis that you're restoring.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = 123,
      Arn = "string",
      AnalysisId = "string",
      RequestId = "string"
    )

### Request syntax

    svc$restore_analysis(
      AwsAccountId = "string",
      AnalysisId = "string"
    )
