<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_analysis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an analysis from Amazon QuickSight

### Description

Deletes an analysis from Amazon QuickSight. You can optionally include a
recovery window during which you can restore the analysis. If you don't
specify a recovery window value, the operation defaults to 30 days.
Amazon QuickSight attaches a `DeletionTime` stamp to the response that
specifies the end of the recovery window. At the end of the recovery
window, Amazon QuickSight deletes the analysis permanently.

At any time before recovery window ends, you can use the
`restore_analysis` API operation to remove the `DeletionTime` stamp and
cancel the deletion of the analysis. The analysis remains visible in the
API until it's deleted, so you can describe it but you can't make a
template from it.

An analysis that's scheduled for deletion isn't accessible in the Amazon
QuickSight console. To access it in the console, restore it. Deleting an
analysis doesn't delete the dashboards that you publish from it.

### Usage

    quicksight_delete_analysis(AwsAccountId, AnalysisId,
      RecoveryWindowInDays, ForceDeleteWithoutRecovery)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_analysis_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account where you
want to delete an analysis.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_analysis_:_AnalysisId">AnalysisId</code></td>
<td><p>[required] The ID of the analysis that you're deleting.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_delete_analysis_:_RecoveryWindowInDays">RecoveryWindowInDays</code></td>
<td><p>A value that specifies the number of days that Amazon QuickSight
waits before it deletes the analysis. You can't use this parameter with
the <code>ForceDeleteWithoutRecovery</code> option in the same API call.
The default value is 30.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_analysis_:_ForceDeleteWithoutRecovery">ForceDeleteWithoutRecovery</code></td>
<td><p>This option defaults to the value
<code>NoForceDeleteWithoutRecovery</code>. To immediately delete the
analysis, add the <code>ForceDeleteWithoutRecovery</code> option. You
can't restore an analysis after it's deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = 123,
      Arn = "string",
      AnalysisId = "string",
      DeletionTime = as.POSIXct(
        "2015-01-01"
      ),
      RequestId = "string"
    )

### Request syntax

    svc$delete_analysis(
      AwsAccountId = "string",
      AnalysisId = "string",
      RecoveryWindowInDays = 123,
      ForceDeleteWithoutRecovery = TRUE|FALSE
    )
