<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_create_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a channel for CloudTrail to ingest events from a partner or external source

### Description

Creates a channel for CloudTrail to ingest events from a partner or
external source. After you create a channel, a CloudTrail Lake event
data store can log events from the partner or source that you specify.

### Usage

    cloudtrail_create_channel(Name, Source, Destinations, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudtrail_create_channel_:_Name">Name</code></td>
<td><p>[required] The name of the channel.</p></td>
</tr>
<tr class="even">
<td><code id="cloudtrail_create_channel_:_Source">Source</code></td>
<td><p>[required] The name of the partner or external event source. You
cannot change this name after you create the channel. A maximum of one
channel is allowed per source.</p>
<p>A source can be either <code>Custom</code> for all valid non-Amazon
Web Services events, or the name of a partner event source. For
information about the source names for available partners, see <a
href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-event-data-store-integration.html#cloudtrail-lake-partner-information">Additional
information about integration partners</a> in the CloudTrail User
Guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_create_channel_:_Destinations">Destinations</code></td>
<td><p>[required] One or more event data stores to which events arriving
through a channel will be logged.</p></td>
</tr>
<tr class="even">
<td><code id="cloudtrail_create_channel_:_Tags">Tags</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChannelArn = "string",
      Name = "string",
      Source = "string",
      Destinations = list(
        list(
          Type = "EVENT_DATA_STORE"|"AWS_SERVICE",
          Location = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$create_channel(
      Name = "string",
      Source = "string",
      Destinations = list(
        list(
          Type = "EVENT_DATA_STORE"|"AWS_SERVICE",
          Location = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
