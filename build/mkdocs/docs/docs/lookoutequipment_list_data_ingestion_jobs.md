<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_list_data_ingestion_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of all data ingestion jobs, including dataset name and ARN, S3 location of the input data, status, and so on

### Description

Provides a list of all data ingestion jobs, including dataset name and
ARN, S3 location of the input data, status, and so on.

### Usage

    lookoutequipment_list_data_ingestion_jobs(DatasetName, NextToken,
      MaxResults, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_list_data_ingestion_jobs_:_DatasetName">DatasetName</code></td>
<td><p>The name of the dataset being used for the data ingestion
job.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_data_ingestion_jobs_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token indicating where to continue the
listing of data ingestion jobs.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_list_data_ingestion_jobs_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the maximum number of data ingestion jobs to
list.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_data_ingestion_jobs_:_Status">Status</code></td>
<td><p>Indicates the status of the data ingestion job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      DataIngestionJobSummaries = list(
        list(
          JobId = "string",
          DatasetName = "string",
          DatasetArn = "string",
          IngestionInputConfiguration = list(
            S3InputConfiguration = list(
              Bucket = "string",
              Prefix = "string",
              KeyPattern = "string"
            )
          ),
          Status = "IN_PROGRESS"|"SUCCESS"|"FAILED"
        )
      )
    )

### Request syntax

    svc$list_data_ingestion_jobs(
      DatasetName = "string",
      NextToken = "string",
      MaxResults = 123,
      Status = "IN_PROGRESS"|"SUCCESS"|"FAILED"
    )
