<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_describe_data_ingestion_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information on a specific data ingestion job such as creation time, dataset ARN, and status

### Description

Provides information on a specific data ingestion job such as creation
time, dataset ARN, and status.

### Usage

    lookoutequipment_describe_data_ingestion_job(JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_describe_data_ingestion_job_:_JobId">JobId</code></td>
<td><p>[required] The job ID of the data ingestion job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string",
      DatasetArn = "string",
      IngestionInputConfiguration = list(
        S3InputConfiguration = list(
          Bucket = "string",
          Prefix = "string",
          KeyPattern = "string"
        )
      ),
      RoleArn = "string",
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      Status = "IN_PROGRESS"|"SUCCESS"|"FAILED",
      FailedReason = "string",
      DataQualitySummary = list(
        InsufficientSensorData = list(
          MissingCompleteSensorData = list(
            AffectedSensorCount = 123
          ),
          SensorsWithShortDateRange = list(
            AffectedSensorCount = 123
          )
        ),
        MissingSensorData = list(
          AffectedSensorCount = 123,
          TotalNumberOfMissingValues = 123
        ),
        InvalidSensorData = list(
          AffectedSensorCount = 123,
          TotalNumberOfInvalidValues = 123
        ),
        UnsupportedTimestamps = list(
          TotalNumberOfUnsupportedTimestamps = 123
        ),
        DuplicateTimestamps = list(
          TotalNumberOfDuplicateTimestamps = 123
        )
      ),
      IngestedFilesSummary = list(
        TotalNumberOfFiles = 123,
        IngestedNumberOfFiles = 123,
        DiscardedFiles = list(
          list(
            Bucket = "string",
            Key = "string"
          )
        )
      ),
      StatusDetail = "string",
      IngestedDataSize = 123,
      DataStartTime = as.POSIXct(
        "2015-01-01"
      ),
      DataEndTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_data_ingestion_job(
      JobId = "string"
    )
