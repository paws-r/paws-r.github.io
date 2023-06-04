<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_associate_origination_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified origination identity with a pool

### Description

Associates the specified origination identity with a pool.

If the origination identity is a phone number and is already associated
with another pool, an Error is returned. A sender ID can be associated
with multiple pools.

If the origination identity configuration doesn't match the pool's
configuration, an Error is returned.

### Usage

    pinpointsmsvoicev2_associate_origination_identity(PoolId,
      OriginationIdentity, IsoCountryCode, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_associate_origination_identity_:_PoolId">PoolId</code></td>
<td><p>[required] The pool to update with the new Identity. This value
can be either the PoolId or PoolArn, and you can find these values using
<code>describe_pools</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_associate_origination_identity_:_OriginationIdentity">OriginationIdentity</code></td>
<td><p>[required] The origination identity to use, such as
PhoneNumberId, PhoneNumberArn, SenderId, or SenderIdArn. You can use
<code>describe_phone_numbers</code> to find the values for PhoneNumberId
and PhoneNumberArn, while <code>describe_sender_ids</code> can be used
to get the values for SenderId and SenderIdArn.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_associate_origination_identity_:_IsoCountryCode">IsoCountryCode</code></td>
<td><p>[required] The new two-character code, in ISO 3166-1 alpha-2
format, for the country or region of the origination identity.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_associate_origination_identity_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don't specify a client token, a
randomly generated token is used for the request to ensure
idempotency.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PoolArn = "string",
      PoolId = "string",
      OriginationIdentityArn = "string",
      OriginationIdentity = "string",
      IsoCountryCode = "string"
    )

### Request syntax

    svc$associate_origination_identity(
      PoolId = "string",
      OriginationIdentity = "string",
      IsoCountryCode = "string",
      ClientToken = "string"
    )
