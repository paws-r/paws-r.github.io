<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_delete_geofence_collection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a geofence collection from your Amazon Web Services account

### Description

Deletes a geofence collection from your Amazon Web Services account.

This operation deletes the resource permanently. If the geofence
collection is the target of a tracker resource, the devices will no
longer be monitored.

### Usage

    locationservice_delete_geofence_collection(CollectionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_delete_geofence_collection_:_CollectionName">CollectionName</code></td>
<td><p>[required] The name of the geofence collection to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_geofence_collection(
      CollectionName = "string"
    )
