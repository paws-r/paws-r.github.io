<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_list_domains</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the domains in the Amazon Web Services account

### Description

Lists all the domains in the Amazon Web Services account.

### Usage

    voiceid_list_domains(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="voiceid_list_domains_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results that are returned per call. You can
use <code>NextToken</code> to obtain more pages of results. The default
is 100; the maximum allowed page size is also 100.</p></td>
</tr>
<tr class="even">
<td><code id="voiceid_list_domains_:_NextToken">NextToken</code></td>
<td><p>If <code>NextToken</code> is returned, there are more results
available. The value of <code>NextToken</code> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged. Each
pagination token expires after 24 hours.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainSummaries = list(
        list(
          Arn = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Description = "string",
          DomainId = "string",
          DomainStatus = "ACTIVE"|"PENDING"|"SUSPENDED",
          Name = "string",
          ServerSideEncryptionConfiguration = list(
            KmsKeyId = "string"
          ),
          ServerSideEncryptionUpdateDetails = list(
            Message = "string",
            OldKmsKeyId = "string",
            UpdateStatus = "IN_PROGRESS"|"COMPLETED"|"FAILED"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          WatchlistDetails = list(
            DefaultWatchlistId = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_domains(
      MaxResults = 123,
      NextToken = "string"
    )
