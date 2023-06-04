<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_get_suppressed_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about a specific email address that's on the suppression list for your account

### Description

Retrieves information about a specific email address that's on the
suppression list for your account.

### Usage

    sesv2_get_suppressed_destination(EmailAddress)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_get_suppressed_destination_:_EmailAddress">EmailAddress</code></td>
<td><p>[required] The email address that's on the account suppression
list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SuppressedDestination = list(
        EmailAddress = "string",
        Reason = "BOUNCE"|"COMPLAINT",
        LastUpdateTime = as.POSIXct(
          "2015-01-01"
        ),
        Attributes = list(
          MessageId = "string",
          FeedbackId = "string"
        )
      )
    )

### Request syntax

    svc$get_suppressed_destination(
      EmailAddress = "string"
    )
