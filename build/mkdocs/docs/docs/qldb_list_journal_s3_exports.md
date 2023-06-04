<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_list_journal_s3_exports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all journal export jobs for all ledgers that are associated with the current Amazon Web Services account and Region

### Description

Returns all journal export jobs for all ledgers that are associated with
the current Amazon Web Services account and Region.

This action returns a maximum of `MaxResults` items, and is paginated so
that you can retrieve all the items by calling `list_journal_s3_exports`
multiple times.

This action does not return any expired export jobs. For more
information, see [Export job
expiration](https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration)
in the *Amazon QLDB Developer Guide*.

### Usage

    qldb_list_journal_s3_exports(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="qldb_list_journal_s3_exports_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
<code>list_journal_s3_exports</code> request. (The actual number of
results returned might be fewer.)</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_list_journal_s3_exports_:_NextToken">NextToken</code></td>
<td><p>A pagination token, indicating that you want to retrieve the next
page of results. If you received a value for <code>NextToken</code> in
the response from a previous <code>list_journal_s3_exports</code> call,
then you should use that value as input here.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JournalS3Exports = list(
        list(
          LedgerName = "string",
          ExportId = "string",
          ExportCreationTime = as.POSIXct(
            "2015-01-01"
          ),
          Status = "IN_PROGRESS"|"COMPLETED"|"CANCELLED",
          InclusiveStartTime = as.POSIXct(
            "2015-01-01"
          ),
          ExclusiveEndTime = as.POSIXct(
            "2015-01-01"
          ),
          S3ExportConfiguration = list(
            Bucket = "string",
            Prefix = "string",
            EncryptionConfiguration = list(
              ObjectEncryptionType = "SSE_KMS"|"SSE_S3"|"NO_ENCRYPTION",
              KmsKeyArn = "string"
            )
          ),
          RoleArn = "string",
          OutputFormat = "ION_BINARY"|"ION_TEXT"|"JSON"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_journal_s3_exports(
      MaxResults = 123,
      NextToken = "string"
    )
