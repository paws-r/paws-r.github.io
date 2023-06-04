<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_get_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a specific channel

### Description

Returns information about a specific channel.

### Usage

    cloudtrail_get_channel(Channel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudtrail_get_channel_:_Channel">Channel</code></td>
<td><p>[required] The ARN or <code>UUID</code> of a channel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChannelArn = "string",
      Name = "string",
      Source = "string",
      SourceConfig = list(
        ApplyToAllRegions = TRUE|FALSE,
        AdvancedEventSelectors = list(
          list(
            Name = "string",
            FieldSelectors = list(
              list(
                Field = "string",
                Equals = list(
                  "string"
                ),
                StartsWith = list(
                  "string"
                ),
                EndsWith = list(
                  "string"
                ),
                NotEquals = list(
                  "string"
                ),
                NotStartsWith = list(
                  "string"
                ),
                NotEndsWith = list(
                  "string"
                )
              )
            )
          )
        )
      ),
      Destinations = list(
        list(
          Type = "EVENT_DATA_STORE"|"AWS_SERVICE",
          Location = "string"
        )
      ),
      IngestionStatus = list(
        LatestIngestionSuccessTime = as.POSIXct(
          "2015-01-01"
        ),
        LatestIngestionSuccessEventID = "string",
        LatestIngestionErrorCode = "string",
        LatestIngestionAttemptTime = as.POSIXct(
          "2015-01-01"
        ),
        LatestIngestionAttemptEventID = "string"
      )
    )

### Request syntax

    svc$get_channel(
      Channel = "string"
    )
