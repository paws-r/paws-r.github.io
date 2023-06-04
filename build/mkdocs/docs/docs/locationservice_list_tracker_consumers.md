<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_list_tracker_consumers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists geofence collections currently associated to the given tracker resource

### Description

Lists geofence collections currently associated to the given tracker
resource.

### Usage

    locationservice_list_tracker_consumers(MaxResults, NextToken,
      TrackerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_list_tracker_consumers_:_MaxResults">MaxResults</code></td>
<td><p>An optional limit for the number of resources returned in a
single call.</p>
<p>Default value: <code>100</code></p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_list_tracker_consumers_:_NextToken">NextToken</code></td>
<td><p>The pagination token specifying which page of results to return
in the response. If no token is provided, the default page is the first
page.</p>
<p>Default value: <code>null</code></p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_list_tracker_consumers_:_TrackerName">TrackerName</code></td>
<td><p>[required] The tracker resource whose associated geofence
collections you want to list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConsumerArns = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tracker_consumers(
      MaxResults = 123,
      NextToken = "string",
      TrackerName = "string"
    )
