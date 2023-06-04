<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_describe_dataset_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a dataset import job created using the CreateDatasetImportJob operation

### Description

Describes a dataset import job created using the
`create_dataset_import_job` operation.

In addition to listing the parameters provided in the
`create_dataset_import_job` request, this operation includes the
following properties:

-   `CreationTime`

-   `LastModificationTime`

-   `DataSize`

-   `FieldStatistics`

-   `Status`

-   `Message` - If an error occurred, information about the error.

### Usage

    forecastservice_describe_dataset_import_job(DatasetImportJobArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_describe_dataset_import_job_:_DatasetImportJobArn">DatasetImportJobArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset import
job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasetImportJobName = "string",
      DatasetImportJobArn = "string",
      DatasetArn = "string",
      TimestampFormat = "string",
      TimeZone = "string",
      UseGeolocationForTimeZone = TRUE|FALSE,
      GeolocationFormat = "string",
      DataSource = list(
        S3Config = list(
          Path = "string",
          RoleArn = "string",
          KMSKeyArn = "string"
        )
      ),
      EstimatedTimeRemainingInMinutes = 123,
      FieldStatistics = list(
        list(
          Count = 123,
          CountDistinct = 123,
          CountNull = 123,
          CountNan = 123,
          Min = "string",
          Max = "string",
          Avg = 123.0,
          Stddev = 123.0,
          CountLong = 123,
          CountDistinctLong = 123,
          CountNullLong = 123,
          CountNanLong = 123
        )
      ),
      DataSize = 123.0,
      Status = "string",
      Message = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      ),
      Format = "string",
      ImportMode = "FULL"|"INCREMENTAL"
    )

### Request syntax

    svc$describe_dataset_import_job(
      DatasetImportJobArn = "string"
    )
