<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_put_account_dedicated_ip_warmup_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enable or disable the automatic warm-up feature for dedicated IP addresses

### Description

Enable or disable the automatic warm-up feature for dedicated IP
addresses.

### Usage

    pinpointemail_put_account_dedicated_ip_warmup_attributes(
      AutoWarmupEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_put_account_dedicated_ip_warmup_attributes_:_AutoWarmupEnabled">AutoWarmupEnabled</code></td>
<td><p>Enables or disables the automatic warm-up feature for dedicated
IP addresses that are associated with your Amazon Pinpoint account in
the current AWS Region. Set to <code>true</code> to enable the automatic
warm-up feature, or set to <code>false</code> to disable it.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_account_dedicated_ip_warmup_attributes(
      AutoWarmupEnabled = TRUE|FALSE
    )
