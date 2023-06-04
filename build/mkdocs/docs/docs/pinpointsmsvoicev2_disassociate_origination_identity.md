<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_disassociate_origination_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified origination identity from an existing pool

### Description

Removes the specified origination identity from an existing pool.

If the origination identity isn't associated with the specified pool, an
Error is returned.

### Usage

    pinpointsmsvoicev2_disassociate_origination_identity(PoolId,
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
id="pinpointsmsvoicev2_disassociate_origination_identity_:_PoolId">PoolId</code></td>
<td><p>[required] The unique identifier for the pool to disassociate
with the origination identity. This value can be either the PoolId or
PoolArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_disassociate_origination_identity_:_OriginationIdentity">OriginationIdentity</code></td>
<td><p>[required] The origination identity to use such as a
PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use
<code>describe_phone_numbers</code> find the values for PhoneNumberId
and PhoneNumberArn, or use <code>describe_sender_ids</code> to get the
values for SenderId and SenderIdArn.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_disassociate_origination_identity_:_IsoCountryCode">IsoCountryCode</code></td>
<td><p>[required] The two-character code, in ISO 3166-1 alpha-2 format,
for the country or region.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_disassociate_origination_identity_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier you provide to ensure the
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

    svc$disassociate_origination_identity(
      PoolId = "string",
      OriginationIdentity = "string",
      IsoCountryCode = "string",
      ClientToken = "string"
    )
