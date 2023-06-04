<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_list_sensor_statistics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists statistics about the data collected for each of the sensors that have been successfully ingested in the particular dataset

### Description

Lists statistics about the data collected for each of the sensors that
have been successfully ingested in the particular dataset. Can also be
used to retreive Sensor Statistics for a previous ingestion job.

### Usage

    lookoutequipment_list_sensor_statistics(DatasetName, IngestionJobId,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_list_sensor_statistics_:_DatasetName">DatasetName</code></td>
<td><p>[required] The name of the dataset associated with the list of
Sensor Statistics.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_sensor_statistics_:_IngestionJobId">IngestionJobId</code></td>
<td><p>The ingestion job id associated with the list of Sensor
Statistics. To get sensor statistics for a particular ingestion job id,
both dataset name and ingestion job id must be submitted as
inputs.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_list_sensor_statistics_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the maximum number of sensors for which to retrieve
statistics.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_sensor_statistics_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token indicating where to continue the
listing of sensor statistics.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SensorStatisticsSummaries = list(
        list(
          ComponentName = "string",
          SensorName = "string",
          DataExists = TRUE|FALSE,
          MissingValues = list(
            Count = 123,
            Percentage = 123.0
          ),
          InvalidValues = list(
            Count = 123,
            Percentage = 123.0
          ),
          InvalidDateEntries = list(
            Count = 123,
            Percentage = 123.0
          ),
          DuplicateTimestamps = list(
            Count = 123,
            Percentage = 123.0
          ),
          CategoricalValues = list(
            Status = "POTENTIAL_ISSUE_DETECTED"|"NO_ISSUE_DETECTED",
            NumberOfCategory = 123
          ),
          MultipleOperatingModes = list(
            Status = "POTENTIAL_ISSUE_DETECTED"|"NO_ISSUE_DETECTED"
          ),
          LargeTimestampGaps = list(
            Status = "POTENTIAL_ISSUE_DETECTED"|"NO_ISSUE_DETECTED",
            NumberOfLargeTimestampGaps = 123,
            MaxTimestampGapInDays = 123
          ),
          MonotonicValues = list(
            Status = "POTENTIAL_ISSUE_DETECTED"|"NO_ISSUE_DETECTED",
            Monotonicity = "DECREASING"|"INCREASING"|"STATIC"
          ),
          DataStartTime = as.POSIXct(
            "2015-01-01"
          ),
          DataEndTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_sensor_statistics(
      DatasetName = "string",
      IngestionJobId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
