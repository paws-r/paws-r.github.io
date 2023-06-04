<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_theme_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the versions of the themes in the current Amazon Web Services account

### Description

Lists all the versions of the themes in the current Amazon Web Services
account.

### Usage

    quicksight_list_theme_versions(AwsAccountId, ThemeId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_theme_versions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the themes that you're listing.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_theme_versions_:_ThemeId">ThemeId</code></td>
<td><p>[required] The ID for the theme.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_theme_versions_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_theme_versions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ThemeVersionSummaryList = list(
        list(
          VersionNumber = 123,
          Arn = "string",
          Description = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          Status = "CREATION_IN_PROGRESS"|"CREATION_SUCCESSFUL"|"CREATION_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_FAILED"|"DELETED"
        )
      ),
      NextToken = "string",
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$list_theme_versions(
      AwsAccountId = "string",
      ThemeId = "string",
      NextToken = "string",
      MaxResults = 123
    )
