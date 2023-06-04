<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm_put_account_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or modifies account-level configurations in ACM

### Description

Adds or modifies account-level configurations in ACM.

The supported configuration option is `DaysBeforeExpiry`. This option
specifies the number of days prior to certificate expiration when ACM
starts generating `EventBridge` events. ACM sends one event per day per
certificate until the certificate expires. By default, accounts receive
events starting 45 days before certificate expiration.

### Usage

    acm_put_account_configuration(ExpiryEvents, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acm_put_account_configuration_:_ExpiryEvents">ExpiryEvents</code></td>
<td><p>Specifies expiration events associated with an account.</p></td>
</tr>
<tr class="even">
<td><code
id="acm_put_account_configuration_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>[required] Customer-chosen string used to distinguish between
calls to <code>put_account_configuration</code>. Idempotency tokens time
out after one hour. If you call <code>put_account_configuration</code>
multiple times with the same unexpired idempotency token, ACM treats it
as the same request and returns the original result. If you change the
idempotency token for each call, ACM treats each call as a new
request.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_account_configuration(
      ExpiryEvents = list(
        DaysBeforeExpiry = 123
      ),
      IdempotencyToken = "string"
    )
