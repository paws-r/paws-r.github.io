<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>healthlake_start_fhir_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Begins a FHIR Import job

### Description

Begins a FHIR Import job.

### Usage

    healthlake_start_fhir_import_job(JobName, InputDataConfig,
      JobOutputDataConfig, DatastoreId, DataAccessRoleArn, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="healthlake_start_fhir_import_job_:_JobName">JobName</code></td>
<td><p>The name of the FHIR Import job in the StartFHIRImport job
request.</p></td>
</tr>
<tr class="even">
<td><code
id="healthlake_start_fhir_import_job_:_InputDataConfig">InputDataConfig</code></td>
<td><p>[required] The input properties of the FHIR Import job in the
StartFHIRImport job request.</p></td>
</tr>
<tr class="odd">
<td><code
id="healthlake_start_fhir_import_job_:_JobOutputDataConfig">JobOutputDataConfig</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="healthlake_start_fhir_import_job_:_DatastoreId">DatastoreId</code></td>
<td><p>[required] The AWS-generated Data Store ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="healthlake_start_fhir_import_job_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that gives Amazon
HealthLake access permission.</p></td>
</tr>
<tr class="even">
<td><code
id="healthlake_start_fhir_import_job_:_ClientToken">ClientToken</code></td>
<td><p>[required] Optional user provided token used for ensuring
idempotency.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string",
      JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED_WITH_ERRORS"|"COMPLETED"|"FAILED",
      DatastoreId = "string"
    )

### Request syntax

    svc$start_fhir_import_job(
      JobName = "string",
      InputDataConfig = list(
        S3Uri = "string"
      ),
      JobOutputDataConfig = list(
        S3Configuration = list(
          S3Uri = "string",
          KmsKeyId = "string"
        )
      ),
      DatastoreId = "string",
      DataAccessRoleArn = "string",
      ClientToken = "string"
    )
