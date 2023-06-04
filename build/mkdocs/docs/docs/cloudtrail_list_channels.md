<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_list_channels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the channels in the current account, and their source names

### Description

Lists the channels in the current account, and their source names.

### Usage

    cloudtrail_list_channels(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_list_channels_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of CloudTrail channels to display on a single
page.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_list_channels_:_NextToken">NextToken</code></td>
<td><p>The token to use to get the next page of results after a previous
API call. This token must be passed in with the same parameters that
were specified in the original call. For example, if the original call
specified an AttributeKey of 'Username' with a value of 'root', the call
with NextToken should include those same parameters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Channels = list(
        list(
          ChannelArn = "string",
          Name = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_channels(
      MaxResults = 123,
      NextToken = "string"
    )
