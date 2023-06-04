<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_list_device_positions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A batch request to retrieve all device positions

### Description

A batch request to retrieve all device positions.

### Usage

    locationservice_list_device_positions(MaxResults, NextToken,
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
id="locationservice_list_device_positions_:_MaxResults">MaxResults</code></td>
<td><p>An optional limit for the number of entries returned in a single
call.</p>
<p>Default value: <code>100</code></p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_list_device_positions_:_NextToken">NextToken</code></td>
<td><p>The pagination token specifying which page of results to return
in the response. If no token is provided, the default page is the first
page.</p>
<p>Default value: <code>null</code></p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_list_device_positions_:_TrackerName">TrackerName</code></td>
<td><p>[required] The tracker resource containing the requested
devices.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entries = list(
        list(
          Accuracy = list(
            Horizontal = 123.0
          ),
          DeviceId = "string",
          Position = list(
            123.0
          ),
          PositionProperties = list(
            "string"
          ),
          SampleTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_device_positions(
      MaxResults = 123,
      NextToken = "string",
      TrackerName = "string"
    )
