<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_analysis_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the read and write permissions for an analysis

### Description

Updates the read and write permissions for an analysis.

### Usage

    quicksight_update_analysis_permissions(AwsAccountId, AnalysisId,
      GrantPermissions, RevokePermissions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_analysis_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the analysis whose permissions you're updating. You must be
using the Amazon Web Services account that the analysis is in.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_analysis_permissions_:_AnalysisId">AnalysisId</code></td>
<td><p>[required] The ID of the analysis whose permissions you're
updating. The ID is part of the analysis URL.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_analysis_permissions_:_GrantPermissions">GrantPermissions</code></td>
<td><p>A structure that describes the permissions to add and the
principal to add them to.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_analysis_permissions_:_RevokePermissions">RevokePermissions</code></td>
<td><p>A structure that describes the permissions to remove and the
principal to remove them from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnalysisArn = "string",
      AnalysisId = "string",
      Permissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$update_analysis_permissions(
      AwsAccountId = "string",
      AnalysisId = "string",
      GrantPermissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      RevokePermissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      )
    )
