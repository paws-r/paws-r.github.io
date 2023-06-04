<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_list_flywheels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the flywheels that you have created

### Description

Gets a list of the flywheels that you have created.

### Usage

    comprehend_list_flywheels(Filter, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="comprehend_list_flywheels_:_Filter">Filter</code></td>
<td><p>Filters the flywheels that are returned. You can filter flywheels
on their status, or the date and time that they were submitted. You can
only set one filter at a time.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_list_flywheels_:_NextToken">NextToken</code></td>
<td><p>Identifies the next page of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_list_flywheels_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a response. The default is
100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FlywheelSummaryList = list(
        list(
          FlywheelArn = "string",
          ActiveModelArn = "string",
          DataLakeS3Uri = "string",
          Status = "CREATING"|"ACTIVE"|"UPDATING"|"DELETING"|"FAILED",
          ModelType = "DOCUMENT_CLASSIFIER"|"ENTITY_RECOGNIZER",
          Message = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          LatestFlywheelIteration = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_flywheels(
      Filter = list(
        Status = "CREATING"|"ACTIVE"|"UPDATING"|"DELETING"|"FAILED",
        CreationTimeAfter = as.POSIXct(
          "2015-01-01"
        ),
        CreationTimeBefore = as.POSIXct(
          "2015-01-01"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
