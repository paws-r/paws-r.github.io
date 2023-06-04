<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_list_exports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists completed exports within the past 90 days

### Description

Lists completed exports within the past 90 days.

### Usage

    dynamodb_list_exports(TableArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dynamodb_list_exports_:_TableArn">TableArn</code></td>
<td><p>The Amazon Resource Name (ARN) associated with the exported
table.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_list_exports_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return per page.</p></td>
</tr>
<tr class="odd">
<td><code id="dynamodb_list_exports_:_NextToken">NextToken</code></td>
<td><p>An optional string that, if supplied, must be copied from the
output of a previous call to <code>list_exports</code>. When provided in
this manner, the API fetches the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExportSummaries = list(
        list(
          ExportArn = "string",
          ExportStatus = "IN_PROGRESS"|"COMPLETED"|"FAILED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_exports(
      TableArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
