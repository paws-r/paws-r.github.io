<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>healthlake_list_fhir_export_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all FHIR export jobs associated with an account and their statuses

### Description

Lists all FHIR export jobs associated with an account and their
statuses.

### Usage

    healthlake_list_fhir_export_jobs(DatastoreId, NextToken, MaxResults,
      JobName, JobStatus, SubmittedBefore, SubmittedAfter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="healthlake_list_fhir_export_jobs_:_DatastoreId">DatastoreId</code></td>
<td><p>[required] This parameter limits the response to the export job
with the specified Data Store ID.</p></td>
</tr>
<tr class="even">
<td><code
id="healthlake_list_fhir_export_jobs_:_NextToken">NextToken</code></td>
<td><p>A pagination token used to identify the next page of results to
return for a ListFHIRExportJobs query.</p></td>
</tr>
<tr class="odd">
<td><code
id="healthlake_list_fhir_export_jobs_:_MaxResults">MaxResults</code></td>
<td><p>This parameter limits the number of results returned for a
ListFHIRExportJobs to a maximum quantity specified by the user.</p></td>
</tr>
<tr class="even">
<td><code
id="healthlake_list_fhir_export_jobs_:_JobName">JobName</code></td>
<td><p>This parameter limits the response to the export job with the
specified job name.</p></td>
</tr>
<tr class="odd">
<td><code
id="healthlake_list_fhir_export_jobs_:_JobStatus">JobStatus</code></td>
<td><p>This parameter limits the response to the export jobs with the
specified job status.</p></td>
</tr>
<tr class="even">
<td><code
id="healthlake_list_fhir_export_jobs_:_SubmittedBefore">SubmittedBefore</code></td>
<td><p>This parameter limits the response to FHIR export jobs submitted
before a user specified date.</p></td>
</tr>
<tr class="odd">
<td><code
id="healthlake_list_fhir_export_jobs_:_SubmittedAfter">SubmittedAfter</code></td>
<td><p>This parameter limits the response to FHIR export jobs submitted
after a user specified date.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExportJobPropertiesList = list(
        list(
          JobId = "string",
          JobName = "string",
          JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED_WITH_ERRORS"|"COMPLETED"|"FAILED",
          SubmitTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          DatastoreId = "string",
          OutputDataConfig = list(
            S3Configuration = list(
              S3Uri = "string",
              KmsKeyId = "string"
            )
          ),
          DataAccessRoleArn = "string",
          Message = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_fhir_export_jobs(
      DatastoreId = "string",
      NextToken = "string",
      MaxResults = 123,
      JobName = "string",
      JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED_WITH_ERRORS"|"COMPLETED"|"FAILED",
      SubmittedBefore = as.POSIXct(
        "2015-01-01"
      ),
      SubmittedAfter = as.POSIXct(
        "2015-01-01"
      )
    )
