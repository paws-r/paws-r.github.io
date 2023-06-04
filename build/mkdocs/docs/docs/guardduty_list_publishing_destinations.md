<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_list_publishing_destinations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of publishing destinations associated with the specified detectorId

### Description

Returns a list of publishing destinations associated with the specified
`detectorId`.

### Usage

    guardduty_list_publishing_destinations(DetectorId, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_list_publishing_destinations_:_DetectorId">DetectorId</code></td>
<td><p>[required] The ID of the detector to retrieve publishing
destinations for.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_list_publishing_destinations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_list_publishing_destinations_:_NextToken">NextToken</code></td>
<td><p>A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the <code>NextToken</code>
value returned from the previous request to continue listing results
after the first page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Destinations = list(
        list(
          DestinationId = "string",
          DestinationType = "S3",
          Status = "PENDING_VERIFICATION"|"PUBLISHING"|"UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY"|"STOPPED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_publishing_destinations(
      DetectorId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
