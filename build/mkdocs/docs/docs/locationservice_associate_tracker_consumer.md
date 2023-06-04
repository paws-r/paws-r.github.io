<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_associate_tracker_consumer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an association between a geofence collection and a tracker resource

### Description

Creates an association between a geofence collection and a tracker
resource. This allows the tracker resource to communicate location data
to the linked geofence collection.

You can associate up to five geofence collections to each tracker
resource.

Currently not supported — Cross-account configurations, such as creating
associations between a tracker resource in one account and a geofence
collection in another account.

### Usage

    locationservice_associate_tracker_consumer(ConsumerArn, TrackerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_associate_tracker_consumer_:_ConsumerArn">ConsumerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the geofence
collection to be associated to tracker resource. Used when you need to
specify a resource across all Amazon Web Services.</p>
<ul>
<li><p>Format example:
<code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="locationservice_associate_tracker_consumer_:_TrackerName">TrackerName</code></td>
<td><p>[required] The name of the tracker resource to be associated with
a geofence collection.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_tracker_consumer(
      ConsumerArn = "string",
      TrackerName = "string"
    )
