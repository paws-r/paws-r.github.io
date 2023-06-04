<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_get_device_position_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the device position history from a tracker resource within a specified range of time

### Description

Retrieves the device position history from a tracker resource within a
specified range of time.

Device positions are deleted after 30 days.

### Usage

    locationservice_get_device_position_history(DeviceId, EndTimeExclusive,
      MaxResults, NextToken, StartTimeInclusive, TrackerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_get_device_position_history_:_DeviceId">DeviceId</code></td>
<td><p>[required] The device whose position history you want to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_get_device_position_history_:_EndTimeExclusive">EndTimeExclusive</code></td>
<td><p>Specify the end time for the position history in <a
href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO
8601</a> format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. By default, the
value will be the time that the request is made.</p>
<p>Requirement:</p>
<ul>
<li><p>The time specified for <code>EndTimeExclusive</code> must be
after the time for <code>StartTimeInclusive</code>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_get_device_position_history_:_MaxResults">MaxResults</code></td>
<td><p>An optional limit for the number of device positions returned in
a single call.</p>
<p>Default value: <code>100</code></p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_get_device_position_history_:_NextToken">NextToken</code></td>
<td><p>The pagination token specifying which page of results to return
in the response. If no token is provided, the default page is the first
page.</p>
<p>Default value: <code>null</code></p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_get_device_position_history_:_StartTimeInclusive">StartTimeInclusive</code></td>
<td><p>Specify the start time for the position history in <a
href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO
8601</a> format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. By default, the
value will be 24 hours prior to the time that the request is made.</p>
<p>Requirement:</p>
<ul>
<li><p>The time specified for <code>StartTimeInclusive</code> must be
before <code>EndTimeExclusive</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="locationservice_get_device_position_history_:_TrackerName">TrackerName</code></td>
<td><p>[required] The tracker resource receiving the request for the
device position history.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DevicePositions = list(
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
          ReceivedTime = as.POSIXct(
            "2015-01-01"
          ),
          SampleTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_device_position_history(
      DeviceId = "string",
      EndTimeExclusive = as.POSIXct(
        "2015-01-01"
      ),
      MaxResults = 123,
      NextToken = "string",
      StartTimeInclusive = as.POSIXct(
        "2015-01-01"
      ),
      TrackerName = "string"
    )
