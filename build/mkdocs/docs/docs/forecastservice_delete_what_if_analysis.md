<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_delete_what_if_analysis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a what-if analysis created using the CreateWhatIfAnalysis operation

### Description

Deletes a what-if analysis created using the `create_what_if_analysis`
operation. You can delete only what-if analyses that have a status of
`ACTIVE` or `CREATE_FAILED`. To get the status, use the
`describe_what_if_analysis` operation.

You can't delete a what-if analysis while any of its forecasts are being
exported.

### Usage

    forecastservice_delete_what_if_analysis(WhatIfAnalysisArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_delete_what_if_analysis_:_WhatIfAnalysisArn">WhatIfAnalysisArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the what-if analysis
that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_what_if_analysis(
      WhatIfAnalysisArn = "string"
    )
