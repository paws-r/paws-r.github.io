<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_put_dial_request_batch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates dials requests for the specified campaign Amazon Connect account

### Description

Creates dials requests for the specified campaign Amazon Connect
account. This API is idempotent.

### Usage

    connectcampaignservice_put_dial_request_batch(dialRequests, id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_put_dial_request_batch_:_dialRequests">dialRequests</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="connectcampaignservice_put_dial_request_batch_:_id">id</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      failedRequests = list(
        list(
          clientToken = "string",
          failureCode = "InvalidInput"|"RequestThrottled"|"UnknownError",
          id = "string"
        )
      ),
      successfulRequests = list(
        list(
          clientToken = "string",
          id = "string"
        )
      )
    )

### Request syntax

    svc$put_dial_request_batch(
      dialRequests = list(
        list(
          attributes = list(
            "string"
          ),
          clientToken = "string",
          expirationTime = as.POSIXct(
            "2015-01-01"
          ),
          phoneNumber = "string"
        )
      ),
      id = "string"
    )
