<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_list_mailbox_export_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the mailbox export jobs started for the specified organization within the last seven days

### Description

Lists the mailbox export jobs started for the specified organization
within the last seven days.

### Usage

    workmail_list_mailbox_export_jobs(OrganizationId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_list_mailbox_export_jobs_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The organization ID.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_list_mailbox_export_jobs_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_list_mailbox_export_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Jobs = list(
        list(
          JobId = "string",
          EntityId = "string",
          Description = "string",
          S3BucketName = "string",
          S3Path = "string",
          EstimatedProgress = 123,
          State = "RUNNING"|"COMPLETED"|"FAILED"|"CANCELLED",
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

    svc$list_mailbox_export_jobs(
      OrganizationId = "string",
      NextToken = "string",
      MaxResults = 123
    )
