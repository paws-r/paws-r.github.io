<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_update_tracker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified properties of a given tracker resource

### Description

Updates the specified properties of a given tracker resource.

### Usage

    locationservice_update_tracker(Description, PositionFiltering,
      PricingPlan, PricingPlanDataSource, TrackerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_update_tracker_:_Description">Description</code></td>
<td><p>Updates the description for the tracker resource.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_update_tracker_:_PositionFiltering">PositionFiltering</code></td>
<td><p>Updates the position filtering for the tracker resource.</p>
<p>Valid values:</p>
<ul>
<li><p><code>TimeBased</code> - Location updates are evaluated against
linked geofence collections, but not every location update is stored. If
your update frequency is more often than 30 seconds, only one update per
30 seconds is stored for each unique device ID.</p></li>
<li><p><code>DistanceBased</code> - If the device has moved less than 30
m (98.4 ft), location updates are ignored. Location updates within this
distance are neither evaluated against linked geofence collections, nor
stored. This helps control costs by reducing the number of geofence
evaluations and historical device positions to paginate through.
Distance-based filtering can also reduce the effects of GPS noise when
displaying device trajectories on a map.</p></li>
<li><p><code>AccuracyBased</code> - If the device has moved less than
the measured accuracy, location updates are ignored. For example, if two
consecutive updates from a device have a horizontal accuracy of 5 m and
10 m, the second update is ignored if the device has moved less than 15
m. Ignored location updates are neither evaluated against linked
geofence collections, nor stored. This helps educe the effects of GPS
noise when displaying device trajectories on a map, and can help control
costs by reducing the number of geofence evaluations.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_update_tracker_:_PricingPlan">PricingPlan</code></td>
<td><p>No longer used. If included, the only allowed value is
<code>RequestBasedUsage</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_update_tracker_:_PricingPlanDataSource">PricingPlanDataSource</code></td>
<td><p>This parameter is no longer used.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_update_tracker_:_TrackerName">TrackerName</code></td>
<td><p>[required] The name of the tracker resource to update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrackerArn = "string",
      TrackerName = "string",
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_tracker(
      Description = "string",
      PositionFiltering = "TimeBased"|"DistanceBased"|"AccuracyBased",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
      PricingPlanDataSource = "string",
      TrackerName = "string"
    )
