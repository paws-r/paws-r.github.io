<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_update_account_sending_enabled</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables or disables email sending across your entire Amazon SES account in the current AWS Region

### Description

Enables or disables email sending across your entire Amazon SES account
in the current AWS Region. You can use this operation in conjunction
with Amazon CloudWatch alarms to temporarily pause email sending across
your Amazon SES account in a given AWS Region when reputation metrics
(such as your bounce or complaint rates) reach certain thresholds.

You can execute this operation no more than once per second.

### Usage

    ses_update_account_sending_enabled(Enabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_update_account_sending_enabled_:_Enabled">Enabled</code></td>
<td><p>Describes whether email sending is enabled or disabled for your
Amazon SES account in the current AWS Region.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_account_sending_enabled(
      Enabled = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following example updated the sending status for this account.
    svc$update_account_sending_enabled(
      Enabled = TRUE
    )

    ## End(Not run)
