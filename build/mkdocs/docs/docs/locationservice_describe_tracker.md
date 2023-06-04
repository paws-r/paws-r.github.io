<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_describe_tracker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the tracker resource details

### Description

Retrieves the tracker resource details.

### Usage

    locationservice_describe_tracker(TrackerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_describe_tracker_:_TrackerName">TrackerName</code></td>
<td><p>[required] The name of the tracker resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      Description = "string",
      KmsKeyId = "string",
      PositionFiltering = "TimeBased"|"DistanceBased"|"AccuracyBased",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
      PricingPlanDataSource = "string",
      Tags = list(
        "string"
      ),
      TrackerArn = "string",
      TrackerName = "string",
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_tracker(
      TrackerName = "string"
    )
