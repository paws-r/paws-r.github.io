<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_delete_suppressed_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes an email address from the suppression list for your account

### Description

Removes an email address from the suppression list for your account.

### Usage

    sesv2_delete_suppressed_destination(EmailAddress)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_delete_suppressed_destination_:_EmailAddress">EmailAddress</code></td>
<td><p>[required] The suppressed email destination to remove from the
account suppression list.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_suppressed_destination(
      EmailAddress = "string"
    )
