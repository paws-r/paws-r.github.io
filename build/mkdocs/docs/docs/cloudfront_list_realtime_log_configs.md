<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_realtime_log_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of real-time log configurations

### Description

Gets a list of real-time log configurations.

You can optionally specify the maximum number of items to receive in the
response. If the total number of items in the list exceeds the maximum
that you specify, or the default maximum, the response is paginated. To
get the next page of items, send a subsequent request that specifies the
`NextMarker` value from the current response as the `Marker` value in
the subsequent request.

### Usage

    cloudfront_list_realtime_log_configs(MaxItems, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_list_realtime_log_configs_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of real-time log configurations that you want
in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_list_realtime_log_configs_:_Marker">Marker</code></td>
<td><p>Use this field when paginating results to indicate where to begin
in your list of real-time log configurations. The response includes
real-time log configurations in the list that occur after the marker. To
get the next page of the list, set this field's value to the value of
<code>NextMarker</code> from the current page's response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RealtimeLogConfigs = list(
        MaxItems = 123,
        Items = list(
          list(
            ARN = "string",
            Name = "string",
            SamplingRate = 123,
            EndPoints = list(
              list(
                StreamType = "string",
                KinesisStreamConfig = list(
                  RoleARN = "string",
                  StreamARN = "string"
                )
              )
            ),
            Fields = list(
              "string"
            )
          )
        ),
        IsTruncated = TRUE|FALSE,
        Marker = "string",
        NextMarker = "string"
      )
    )

### Request syntax

    svc$list_realtime_log_configs(
      MaxItems = "string",
      Marker = "string"
    )
