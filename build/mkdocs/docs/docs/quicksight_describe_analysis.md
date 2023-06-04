<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_analysis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a summary of the metadata for an analysis

### Description

Provides a summary of the metadata for an analysis.

### Usage

    quicksight_describe_analysis(AwsAccountId, AnalysisId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_analysis_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the analysis. You must be using the Amazon Web Services account
that the analysis is in.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_analysis_:_AnalysisId">AnalysisId</code></td>
<td><p>[required] The ID of the analysis that you're describing. The ID
is part of the URL of the analysis.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Analysis = list(
        AnalysisId = "string",
        Arn = "string",
        Name = "string",
        Status = "CREATION_IN_PROGRESS"|"CREATION_SUCCESSFUL"|"CREATION_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_FAILED"|"DELETED",
        Errors = list(
          list(
            Type = "ACCESS_DENIED"|"SOURCE_NOT_FOUND"|"DATA_SET_NOT_FOUND"|"INTERNAL_FAILURE"|"PARAMETER_VALUE_INCOMPATIBLE"|"PARAMETER_TYPE_INVALID"|"PARAMETER_NOT_FOUND"|"COLUMN_TYPE_MISMATCH"|"COLUMN_GEOGRAPHIC_ROLE_MISMATCH"|"COLUMN_REPLACEMENT_MISSING",
            Message = "string",
            ViolatedEntities = list(
              list(
                Path = "string"
              )
            )
          )
        ),
        DataSetArns = list(
          "string"
        ),
        ThemeArn = "string",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        Sheets = list(
          list(
            SheetId = "string",
            Name = "string"
          )
        )
      ),
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$describe_analysis(
      AwsAccountId = "string",
      AnalysisId = "string"
    )
