<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationcostprofiler_import_application_usage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Ingests application usage data from Amazon Simple Storage Service (Amazon S3)

### Description

Ingests application usage data from Amazon Simple Storage Service
(Amazon S3).

The data must already exist in the S3 location. As part of the action,
AWS Application Cost Profiler copies the object from your S3 bucket to
an S3 bucket owned by Amazon for processing asynchronously.

### Usage

    applicationcostprofiler_import_application_usage(sourceS3Location)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationcostprofiler_import_application_usage_:_sourceS3Location">sourceS3Location</code></td>
<td><p>[required] Amazon S3 location to import application usage data
from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      importId = "string"
    )

### Request syntax

    svc$import_application_usage(
      sourceS3Location = list(
        bucket = "string",
        key = "string",
        region = "ap-east-1"|"me-south-1"|"eu-south-1"|"af-south-1"
      )
    )
