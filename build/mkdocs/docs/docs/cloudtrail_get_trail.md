<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_get_trail</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns settings information for a specified trail

### Description

Returns settings information for a specified trail.

### Usage

    cloudtrail_get_trail(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudtrail_get_trail_:_Name">Name</code></td>
<td><p>[required] The name or the Amazon Resource Name (ARN) of the
trail for which you want to retrieve settings information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Trail = list(
        Name = "string",
        S3BucketName = "string",
        S3KeyPrefix = "string",
        SnsTopicName = "string",
        SnsTopicARN = "string",
        IncludeGlobalServiceEvents = TRUE|FALSE,
        IsMultiRegionTrail = TRUE|FALSE,
        HomeRegion = "string",
        TrailARN = "string",
        LogFileValidationEnabled = TRUE|FALSE,
        CloudWatchLogsLogGroupArn = "string",
        CloudWatchLogsRoleArn = "string",
        KmsKeyId = "string",
        HasCustomEventSelectors = TRUE|FALSE,
        HasInsightSelectors = TRUE|FALSE,
        IsOrganizationTrail = TRUE|FALSE
      )
    )

### Request syntax

    svc$get_trail(
      Name = "string"
    )
