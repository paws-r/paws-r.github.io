<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_put_suppressed_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an email address to the suppression list for your account

### Description

Adds an email address to the suppression list for your account.

### Usage

    sesv2_put_suppressed_destination(EmailAddress, Reason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_put_suppressed_destination_:_EmailAddress">EmailAddress</code></td>
<td><p>[required] The email address that should be added to the
suppression list for your account.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_put_suppressed_destination_:_Reason">Reason</code></td>
<td><p>[required] The factors that should cause the email address to be
added to the suppression list for your account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_suppressed_destination(
      EmailAddress = "string",
      Reason = "BOUNCE"|"COMPLAINT"
    )
