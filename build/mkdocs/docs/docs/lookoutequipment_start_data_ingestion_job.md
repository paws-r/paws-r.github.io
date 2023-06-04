<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_start_data_ingestion_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a data ingestion job

### Description

Starts a data ingestion job. Amazon Lookout for Equipment returns the
job status.

### Usage

    lookoutequipment_start_data_ingestion_job(DatasetName,
      IngestionInputConfiguration, RoleArn, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_start_data_ingestion_job_:_DatasetName">DatasetName</code></td>
<td><p>[required] The name of the dataset being used by the data
ingestion job.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_start_data_ingestion_job_:_IngestionInputConfiguration">IngestionInputConfiguration</code></td>
<td><p>[required] Specifies information for the input data for the data
ingestion job, including dataset S3 location.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_start_data_ingestion_job_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of a role with
permission to access the data source for the data ingestion
job.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_start_data_ingestion_job_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique identifier for the request. If you do not set
the client request token, Amazon Lookout for Equipment generates
one.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string",
      Status = "IN_PROGRESS"|"SUCCESS"|"FAILED"
    )

### Request syntax

    svc$start_data_ingestion_job(
      DatasetName = "string",
      IngestionInputConfiguration = list(
        S3InputConfiguration = list(
          Bucket = "string",
          Prefix = "string",
          KeyPattern = "string"
        )
      ),
      RoleArn = "string",
      ClientToken = "string"
    )
