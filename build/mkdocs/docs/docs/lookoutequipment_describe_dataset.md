<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_describe_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a JSON description of the data in each time series dataset, including names, column names, and data types

### Description

Provides a JSON description of the data in each time series dataset,
including names, column names, and data types.

### Usage

    lookoutequipment_describe_dataset(DatasetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_describe_dataset_:_DatasetName">DatasetName</code></td>
<td><p>[required] The name of the dataset to be described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasetName = "string",
      DatasetArn = "string",
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      Status = "CREATED"|"INGESTION_IN_PROGRESS"|"ACTIVE",
      Schema = "string",
      ServerSideKmsKeyId = "string",
      IngestionInputConfiguration = list(
        S3InputConfiguration = list(
          Bucket = "string",
          Prefix = "string",
          KeyPattern = "string"
        )
      ),
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
      RoleArn = "string",
      DataStartTime = as.POSIXct(
        "2015-01-01"
      ),
      DataEndTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_dataset(
      DatasetName = "string"
    )
