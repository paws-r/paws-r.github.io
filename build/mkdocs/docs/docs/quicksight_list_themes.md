<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_themes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the themes in the current Amazon Web Services account

### Description

Lists all the themes in the current Amazon Web Services account.

### Usage

    quicksight_list_themes(AwsAccountId, NextToken, MaxResults, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_themes_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the themes that you're listing.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_list_themes_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_themes_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_list_themes_:_Type">Type</code></td>
<td><p>The type of themes that you want to list. Valid options include
the following:</p>
<ul>
<li><p><code>ALL (default)</code>- Display all existing themes.</p></li>
<li><p><code>CUSTOM</code> - Display only the themes created by people
using Amazon QuickSight.</p></li>
<li><p><code>QUICKSIGHT</code> - Display only the starting themes
defined by Amazon QuickSight.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ThemeSummaryList = list(
        list(
          Arn = "string",
          Name = "string",
          ThemeId = "string",
          LatestVersionNumber = 123,
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string",
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$list_themes(
      AwsAccountId = "string",
      NextToken = "string",
      MaxResults = 123,
      Type = "QUICKSIGHT"|"CUSTOM"|"ALL"
    )
