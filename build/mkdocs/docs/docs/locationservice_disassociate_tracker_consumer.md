<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_disassociate_tracker_consumer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the association between a tracker resource and a geofence collection

### Description

Removes the association between a tracker resource and a geofence
collection.

Once you unlink a tracker resource from a geofence collection, the
tracker positions will no longer be automatically evaluated against
geofences.

### Usage

    locationservice_disassociate_tracker_consumer(ConsumerArn, TrackerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_disassociate_tracker_consumer_:_ConsumerArn">ConsumerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the geofence
collection to be disassociated from the tracker resource. Used when you
need to specify a resource across all Amazon Web Services.</p>
<ul>
<li><p>Format example:
<code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="locationservice_disassociate_tracker_consumer_:_TrackerName">TrackerName</code></td>
<td><p>[required] The name of the tracker resource to be dissociated
from the consumer.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_tracker_consumer(
      ConsumerArn = "string",
      TrackerName = "string"
    )
