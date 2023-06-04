<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_stop_import</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a specified import

### Description

Stops a specified import.

### Usage

    cloudtrail_stop_import(ImportId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudtrail_stop_import_:_ImportId">ImportId</code></td>
<td><p>[required] The ID of the import.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImportId = "string",
      ImportSource = list(
        S3 = list(
          S3LocationUri = "string",
          S3BucketRegion = "string",
          S3BucketAccessRoleArn = "string"
        )
      ),
      Destinations = list(
        "string"
      ),
      ImportStatus = "INITIALIZING"|"IN_PROGRESS"|"FAILED"|"STOPPED"|"COMPLETED",
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      UpdatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      StartEventTime = as.POSIXct(
        "2015-01-01"
      ),
      EndEventTime = as.POSIXct(
        "2015-01-01"
      ),
      ImportStatistics = list(
        PrefixesFound = 123,
        PrefixesCompleted = 123,
        FilesCompleted = 123,
        EventsCompleted = 123,
        FailedEntries = 123
      )
    )

### Request syntax

    svc$stop_import(
      ImportId = "string"
    )
