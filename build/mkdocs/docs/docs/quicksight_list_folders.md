<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_folders</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all folders in an account

### Description

Lists all folders in an account.

### Usage

    quicksight_list_folders(AwsAccountId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_folders_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the folder.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_list_folders_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_folders_:_MaxResults">MaxResults</code></td>
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

    svc$list_folders(
      AwsAccountId = "string",
      NextToken = "string",
      MaxResults = 123
    )
