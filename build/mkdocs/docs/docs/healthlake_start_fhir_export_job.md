<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>healthlake_start_fhir_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Begins a FHIR export job

### Description

Begins a FHIR export job.

### Usage

    healthlake_start_fhir_export_job(JobName, OutputDataConfig, DatastoreId,
      DataAccessRoleArn, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="healthlake_start_fhir_export_job_:_JobName">JobName</code></td>
<td><p>The user generated name for an export job.</p></td>
</tr>
<tr class="even">
<td><code
id="healthlake_start_fhir_export_job_:_OutputDataConfig">OutputDataConfig</code></td>
<td><p>[required] The output data configuration that was supplied when
the export job was created.</p></td>
</tr>
<tr class="odd">
<td><code
id="healthlake_start_fhir_export_job_:_DatastoreId">DatastoreId</code></td>
<td><p>[required] The AWS generated ID for the Data Store from which
files are being exported for an export job.</p></td>
</tr>
<tr class="even">
<td><code
id="healthlake_start_fhir_export_job_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>[required] The Amazon Resource Name used during the initiation of
the job.</p></td>
</tr>
<tr class="odd">
<td><code
id="healthlake_start_fhir_export_job_:_ClientToken">ClientToken</code></td>
<td><p>[required] An optional user provided token used for ensuring
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

    svc$start_fhir_export_job(
      JobName = "string",
      OutputDataConfig = list(
        S3Configuration = list(
          S3Uri = "string",
          KmsKeyId = "string"
        )
      ),
      DatastoreId = "string",
      DataAccessRoleArn = "string",
      ClientToken = "string"
    )
