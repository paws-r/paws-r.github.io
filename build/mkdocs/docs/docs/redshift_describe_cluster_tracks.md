<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_cluster_tracks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all the available maintenance tracks

### Description

Returns a list of all the available maintenance tracks.

### Usage

    redshift_describe_cluster_tracks(MaintenanceTrackName, MaxRecords,
      Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_cluster_tracks_:_MaintenanceTrackName">MaintenanceTrackName</code></td>
<td><p>The name of the maintenance track.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_cluster_tracks_:_MaxRecords">MaxRecords</code></td>
<td><p>An integer value for the maximum number of maintenance tracks to
return.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_cluster_tracks_:_Marker">Marker</code></td>
<td><p>An optional parameter that specifies the starting point to return
a set of response records. When the results of a
<code>describe_cluster_tracks</code> request exceed the value specified
in <code>MaxRecords</code>, Amazon Redshift returns a value in the
<code>Marker</code> field of the response. You can retrieve the next set
of response records by providing the returned marker value in the
<code>Marker</code> parameter and retrying the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MaintenanceTracks = list(
        list(
          MaintenanceTrackName = "string",
          DatabaseVersion = "string",
          UpdateTargets = list(
            list(
              MaintenanceTrackName = "string",
              DatabaseVersion = "string",
              SupportedOperations = list(
                list(
                  OperationName = "string"
                )
              )
            )
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_cluster_tracks(
      MaintenanceTrackName = "string",
      MaxRecords = 123,
      Marker = "string"
    )
