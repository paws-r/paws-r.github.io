<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_search_folders</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches the subfolders in a folder

### Description

Searches the subfolders in a folder.

### Usage

    quicksight_search_folders(AwsAccountId, Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_search_folders_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the folder.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_search_folders_:_Filters">Filters</code></td>
<td><p>[required] The filters to apply to the search. Currently, you can
search only by the parent folder ARN. For example, <code
style="white-space: pre;">⁠"Filters": [ { "Name": "PARENT_FOLDER_ARN", "Operator": "StringEquals", "Value": "arn:aws:quicksight:us-east-1:1:folder/folderId" } ]⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_search_folders_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_search_folders_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = 123,
      FolderSummaryList = list(
        list(
          Arn = "string",
          FolderId = "string",
          Name = "string",
          FolderType = "SHARED",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string",
      RequestId = "string"
    )

### Request syntax

    svc$search_folders(
      AwsAccountId = "string",
      Filters = list(
        list(
          Operator = "StringEquals"|"StringLike",
          Name = "PARENT_FOLDER_ARN"|"DIRECT_QUICKSIGHT_OWNER"|"DIRECT_QUICKSIGHT_SOLE_OWNER"|"DIRECT_QUICKSIGHT_VIEWER_OR_OWNER"|"QUICKSIGHT_OWNER"|"QUICKSIGHT_VIEWER_OR_OWNER"|"FOLDER_NAME",
          Value = "string"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
