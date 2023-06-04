<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_create_tracker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a tracker resource in your Amazon Web Services account, which lets you retrieve current and historical location of devices

### Description

Creates a tracker resource in your Amazon Web Services account, which
lets you retrieve current and historical location of devices.

### Usage

    locationservice_create_tracker(Description, KmsKeyId, PositionFiltering,
      PricingPlan, PricingPlanDataSource, Tags, TrackerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_create_tracker_:_Description">Description</code></td>
<td><p>An optional description for the tracker resource.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_create_tracker_:_KmsKeyId">KmsKeyId</code></td>
<td><p>A key identifier for an <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">Amazon
Web Services KMS customer managed key</a>. Enter a key ID, key ARN,
alias name, or alias ARN.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_create_tracker_:_PositionFiltering">PositionFiltering</code></td>
<td><p>Specifies the position filtering for the tracker resource.</p>
<p>Valid values:</p>
<ul>
<li><p><code>TimeBased</code> - Location updates are evaluated against
linked geofence collections, but not every location update is stored. If
your update frequency is more often than 30 seconds, only one update per
30 seconds is stored for each unique device ID.</p></li>
<li><p><code>DistanceBased</code> - If the device has moved less than 30
m (98.4 ft), location updates are ignored. Location updates within this
area are neither evaluated against linked geofence collections, nor
stored. This helps control costs by reducing the number of geofence
evaluations and historical device positions to paginate through.
Distance-based filtering can also reduce the effects of GPS noise when
displaying device trajectories on a map.</p></li>
<li><p><code>AccuracyBased</code> - If the device has moved less than
the measured accuracy, location updates are ignored. For example, if two
consecutive updates from a device have a horizontal accuracy of 5 m and
10 m, the second update is ignored if the device has moved less than 15
m. Ignored location updates are neither evaluated against linked
geofence collections, nor stored. This can reduce the effects of GPS
noise when displaying device trajectories on a map, and can help control
your costs by reducing the number of geofence evaluations.</p></li>
</ul>
<p>This field is optional. If not specified, the default value is
<code>TimeBased</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_create_tracker_:_PricingPlan">PricingPlan</code></td>
<td><p>No longer used. If included, the only allowed value is
<code>RequestBasedUsage</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_create_tracker_:_PricingPlanDataSource">PricingPlanDataSource</code></td>
<td><p>This parameter is no longer used.</p></td>
</tr>
<tr class="even">
<td><code id="locationservice_create_tracker_:_Tags">Tags</code></td>
<td><p>Applies one or more tags to the tracker resource. A tag is a
key-value pair helps manage, identify, search, and filter your resources
by labelling them.</p>
<p>Format: <code>"key" : "value"</code></p>
<p>Restrictions:</p>
<ul>
<li><p>Maximum 50 tags per resource</p></li>
<li><p>Each resource tag must be unique with a maximum of one
value.</p></li>
<li><p>Maximum key length: 128 Unicode characters in UTF-8</p></li>
<li><p>Maximum value length: 256 Unicode characters in UTF-8</p></li>
<li><p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the
following characters: + - = . _ : / @.</p></li>
<li><p>Cannot use "aws:" as a prefix for a key.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_create_tracker_:_TrackerName">TrackerName</code></td>
<td><p>[required] The name for the tracker resource.</p>
<p>Requirements:</p>
<ul>
<li><p>Contain only alphanumeric characters (A-Z, a-z, 0-9) , hyphens
(-), periods (.), and underscores (_).</p></li>
<li><p>Must be a unique tracker resource name.</p></li>
<li><p>No spaces allowed. For example,
<code>ExampleTracker</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      TrackerArn = "string",
      TrackerName = "string"
    )

### Request syntax

    svc$create_tracker(
      Description = "string",
      KmsKeyId = "string",
      PositionFiltering = "TimeBased"|"DistanceBased"|"AccuracyBased",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
      PricingPlanDataSource = "string",
      Tags = list(
        "string"
      ),
      TrackerName = "string"
    )
