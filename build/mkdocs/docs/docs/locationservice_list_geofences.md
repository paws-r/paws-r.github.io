<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_list_geofences</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists geofences stored in a given geofence collection

### Description

Lists geofences stored in a given geofence collection.

### Usage

    locationservice_list_geofences(CollectionName, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_list_geofences_:_CollectionName">CollectionName</code></td>
<td><p>[required] The name of the geofence collection storing the list
of geofences.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_list_geofences_:_MaxResults">MaxResults</code></td>
<td><p>An optional limit for the number of geofences returned in a
single call.</p>
<p>Default value: <code>100</code></p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_list_geofences_:_NextToken">NextToken</code></td>
<td><p>The pagination token specifying which page of results to return
in the response. If no token is provided, the default page is the first
page.</p>
<p>Default value: <code>null</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entries = list(
        list(
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          GeofenceId = "string",
          Geometry = list(
            Circle = list(
              Center = list(
                123.0
              ),
              Radius = 123.0
            ),
            Polygon = list(
              list(
                list(
                  123.0
                )
              )
            )
          ),
          Status = "string",
          UpdateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_geofences(
      CollectionName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
