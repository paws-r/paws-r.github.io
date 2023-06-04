<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_put_account_sending_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enable or disable the ability of your account to send email

### Description

Enable or disable the ability of your account to send email.

### Usage

    pinpointemail_put_account_sending_attributes(SendingEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_put_account_sending_attributes_:_SendingEnabled">SendingEnabled</code></td>
<td><p>Enables or disables your account's ability to send email. Set to
<code>true</code> to enable email sending, or set to <code>false</code>
to disable email sending.</p>
<p>If AWS paused your account's ability to send email, you can't use
this operation to resume your account's ability to send email.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_account_sending_attributes(
      SendingEnabled = TRUE|FALSE
    )
