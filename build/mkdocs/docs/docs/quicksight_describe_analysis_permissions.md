<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_analysis_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides the read and write permissions for an analysis

### Description

Provides the read and write permissions for an analysis.

### Usage

    quicksight_describe_analysis_permissions(AwsAccountId, AnalysisId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_analysis_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the analysis whose permissions you're describing. You must be
using the Amazon Web Services account that the analysis is in.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_analysis_permissions_:_AnalysisId">AnalysisId</code></td>
<td><p>[required] The ID of the analysis whose permissions you're
describing. The ID is part of the analysis URL.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnalysisId = "string",
      AnalysisArn = "string",
      Permissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$describe_analysis_permissions(
      AwsAccountId = "string",
      AnalysisId = "string"
    )
