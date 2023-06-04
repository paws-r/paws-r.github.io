<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_list_user_import_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the user import jobs

### Description

Lists the user import jobs.

### Usage

    cognitoidentityprovider_list_user_import_jobs(UserPoolId, MaxResults,
      PaginationToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_list_user_import_jobs_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool that the users are
being imported into.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_list_user_import_jobs_:_MaxResults">MaxResults</code></td>
<td><p>[required] The maximum number of import jobs you want the request
to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_list_user_import_jobs_:_PaginationToken">PaginationToken</code></td>
<td><p>An identifier that was returned from the previous call to
<code>list_user_import_jobs</code>, which can be used to return the next
set of import jobs in the list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserImportJobs = list(
        list(
          JobName = "string",
          JobId = "string",
          UserPoolId = "string",
          PreSignedUrl = "string",
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          StartDate = as.POSIXct(
            "2015-01-01"
          ),
          CompletionDate = as.POSIXct(
            "2015-01-01"
          ),
          Status = "Created"|"Pending"|"InProgress"|"Stopping"|"Expired"|"Stopped"|"Failed"|"Succeeded",
          CloudWatchLogsRoleArn = "string",
          ImportedUsers = 123,
          SkippedUsers = 123,
          FailedUsers = 123,
          CompletionMessage = "string"
        )
      ),
      PaginationToken = "string"
    )

### Request syntax

    svc$list_user_import_jobs(
      UserPoolId = "string",
      MaxResults = 123,
      PaginationToken = "string"
    )
