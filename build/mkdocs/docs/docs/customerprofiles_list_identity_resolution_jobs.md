<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_list_identity_resolution_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the Identity Resolution Jobs in your domain

### Description

Lists all of the Identity Resolution Jobs in your domain. The response
sorts the list by `JobStartTime`.

### Usage

    customerprofiles_list_identity_resolution_jobs(DomainName, NextToken,
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
id="customerprofiles_list_identity_resolution_jobs_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_list_identity_resolution_jobs_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_list_identity_resolution_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityResolutionJobsList = list(
        list(
          DomainName = "string",
          JobId = "string",
          Status = "PENDING"|"PREPROCESSING"|"FIND_MATCHING"|"MERGING"|"COMPLETED"|"PARTIAL_SUCCESS"|"FAILED",
          JobStartTime = as.POSIXct(
            "2015-01-01"
          ),
          JobEndTime = as.POSIXct(
            "2015-01-01"
          ),
          JobStats = list(
            NumberOfProfilesReviewed = 123,
            NumberOfMatchesFound = 123,
            NumberOfMergesDone = 123
          ),
          ExportingLocation = list(
            S3Exporting = list(
              S3BucketName = "string",
              S3KeyName = "string"
            )
          ),
          Message = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_identity_resolution_jobs(
      DomainName = "string",
      NextToken = "string",
      MaxResults = 123
    )
