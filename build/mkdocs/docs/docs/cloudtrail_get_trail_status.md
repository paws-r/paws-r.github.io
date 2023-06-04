<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_get_trail_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a JSON-formatted list of information about the specified trail

### Description

Returns a JSON-formatted list of information about the specified trail.
Fields include information on delivery errors, Amazon SNS and Amazon S3
errors, and start and stop logging times for each trail. This operation
returns trail status from a single region. To return trail status from
all regions, you must call the operation on each region.

### Usage

    cloudtrail_get_trail_status(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudtrail_get_trail_status_:_Name">Name</code></td>
<td><p>[required] Specifies the name or the CloudTrail ARN of the trail
for which you are requesting status. To get the status of a shadow trail
(a replication of the trail in another region), you must specify its
ARN. The following is the format of a trail ARN.</p>
<p><code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IsLogging = TRUE|FALSE,
      LatestDeliveryError = "string",
      LatestNotificationError = "string",
      LatestDeliveryTime = as.POSIXct(
        "2015-01-01"
      ),
      LatestNotificationTime = as.POSIXct(
        "2015-01-01"
      ),
      StartLoggingTime = as.POSIXct(
        "2015-01-01"
      ),
      StopLoggingTime = as.POSIXct(
        "2015-01-01"
      ),
      LatestCloudWatchLogsDeliveryError = "string",
      LatestCloudWatchLogsDeliveryTime = as.POSIXct(
        "2015-01-01"
      ),
      LatestDigestDeliveryTime = as.POSIXct(
        "2015-01-01"
      ),
      LatestDigestDeliveryError = "string",
      LatestDeliveryAttemptTime = "string",
      LatestNotificationAttemptTime = "string",
      LatestNotificationAttemptSucceeded = "string",
      LatestDeliveryAttemptSucceeded = "string",
      TimeLoggingStarted = "string",
      TimeLoggingStopped = "string"
    )

### Request syntax

    svc$get_trail_status(
      Name = "string"
    )
