<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_list_contact_channels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all contact channels for the specified contact

### Description

Lists all contact channels for the specified contact.

### Usage

    ssmcontacts_list_contact_channels(ContactId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_list_contact_channels_:_ContactId">ContactId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
contact.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_contact_channels_:_NextToken">NextToken</code></td>
<td><p>The pagination token to continue to the next page of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_list_contact_channels_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of contact channels per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ContactChannels = list(
        list(
          ContactChannelArn = "string",
          ContactArn = "string",
          Name = "string",
          Type = "SMS"|"VOICE"|"EMAIL",
          DeliveryAddress = list(
            SimpleAddress = "string"
          ),
          ActivationStatus = "ACTIVATED"|"NOT_ACTIVATED"
        )
      )
    )

### Request syntax

    svc$list_contact_channels(
      ContactId = "string",
      NextToken = "string",
      MaxResults = 123
    )
