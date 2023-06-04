<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_get_blacklist_reports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve a list of the blacklists that your dedicated IP addresses appear on

### Description

Retrieve a list of the blacklists that your dedicated IP addresses
appear on.

### Usage

    sesv2_get_blacklist_reports(BlacklistItemNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_get_blacklist_reports_:_BlacklistItemNames">BlacklistItemNames</code></td>
<td><p>[required] A list of IP addresses that you want to retrieve
blacklist information about. You can only specify the dedicated IP
addresses that you use to send email using Amazon SES or Amazon
Pinpoint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BlacklistReport = list(
        list(
          list(
            RblName = "string",
            ListingTime = as.POSIXct(
              "2015-01-01"
            ),
            Description = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_blacklist_reports(
      BlacklistItemNames = list(
        "string"
      )
    )
