<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_list_imports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists completed imports within the past 90 days

### Description

Lists completed imports within the past 90 days.

### Usage

    dynamodb_list_imports(TableArn, PageSize, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dynamodb_list_imports_:_TableArn">TableArn</code></td>
<td><p>The Amazon Resource Name (ARN) associated with the table that was
imported to.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_list_imports_:_PageSize">PageSize</code></td>
<td><p>The number of <code>ImportSummary </code>objects returned in a
single page.</p></td>
</tr>
<tr class="odd">
<td><code id="dynamodb_list_imports_:_NextToken">NextToken</code></td>
<td><p>An optional string that, if supplied, must be copied from the
output of a previous call to <code>list_imports</code>. When provided in
this manner, the API fetches the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImportSummaryList = list(
        list(
          ImportArn = "string",
          ImportStatus = "IN_PROGRESS"|"COMPLETED"|"CANCELLING"|"CANCELLED"|"FAILED",
          TableArn = "string",
          S3BucketSource = list(
            S3BucketOwner = "string",
            S3Bucket = "string",
            S3KeyPrefix = "string"
          ),
          CloudWatchLogGroupArn = "string",
          InputFormat = "DYNAMODB_JSON"|"ION"|"CSV",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_imports(
      TableArn = "string",
      PageSize = 123,
      NextToken = "string"
    )
