<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_describe_page</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists details of the engagement to a contact channel

### Description

Lists details of the engagement to a contact channel.

### Usage

    ssmcontacts_describe_page(PageId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssmcontacts_describe_page_:_PageId">PageId</code></td>
<td><p>[required] The ID of the engagement to a contact
channel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PageArn = "string",
      EngagementArn = "string",
      ContactArn = "string",
      Sender = "string",
      Subject = "string",
      Content = "string",
      PublicSubject = "string",
      PublicContent = "string",
      IncidentId = "string",
      SentTime = as.POSIXct(
        "2015-01-01"
      ),
      ReadTime = as.POSIXct(
        "2015-01-01"
      ),
      DeliveryTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_page(
      PageId = "string"
    )
