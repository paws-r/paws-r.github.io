<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_start_user_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the user import

### Description

Starts the user import.

### Usage

    cognitoidentityprovider_start_user_import_job(UserPoolId, JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_start_user_import_job_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool that the users are
being imported into.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_start_user_import_job_:_JobId">JobId</code></td>
<td><p>[required] The job ID for the user import job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserImportJob = list(
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
    )

### Request syntax

    svc$start_user_import_job(
      UserPoolId = "string",
      JobId = "string"
    )
