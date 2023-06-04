<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_create_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new pool and associates the specified origination identity to the pool

### Description

Creates a new pool and associates the specified origination identity to
the pool. A pool can include one or more phone numbers and SenderIds
that are associated with your Amazon Web Services account.

The new pool inherits its configuration from the specified origination
identity. This includes keywords, message type, opt-out list, two-way
configuration, and self-managed opt-out configuration. Deletion
protection isn't inherited from the origination identity and defaults to
false.

If the origination identity is a phone number and is already associated
with another pool, an Error is returned. A sender ID can be associated
with multiple pools.

### Usage

    pinpointsmsvoicev2_create_pool(OriginationIdentity, IsoCountryCode,
      MessageType, DeletionProtectionEnabled, Tags, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_create_pool_:_OriginationIdentity">OriginationIdentity</code></td>
<td><p>[required] The origination identity to use such as a
PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use
<code>describe_phone_numbers</code> to find the values for PhoneNumberId
and PhoneNumberArn while <code>describe_sender_ids</code> can be used to
get the values for SenderId and SenderIdArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_create_pool_:_IsoCountryCode">IsoCountryCode</code></td>
<td><p>[required] The new two-character code, in ISO 3166-1 alpha-2
format, for the country or region of the new pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_create_pool_:_MessageType">MessageType</code></td>
<td><p>[required] The type of message. Valid values are TRANSACTIONAL
for messages that are critical or time-sensitive and PROMOTIONAL for
messages that aren't critical or time-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_create_pool_:_DeletionProtectionEnabled">DeletionProtectionEnabled</code></td>
<td><p>By default this is set to false. When set to true the pool can't
be deleted. You can change this value using the <code>update_pool</code>
action.</p></td>
</tr>
<tr class="odd">
<td><code id="pinpointsmsvoicev2_create_pool_:_Tags">Tags</code></td>
<td><p>An array of tags (key and value pairs) associated with the
pool.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_create_pool_:_ClientToken">ClientToken</code></td>
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
      Status = "CREATING"|"ACTIVE"|"DELETING",
      MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
      TwoWayEnabled = TRUE|FALSE,
      TwoWayChannelArn = "string",
      SelfManagedOptOutsEnabled = TRUE|FALSE,
      OptOutListName = "string",
      SharedRoutesEnabled = TRUE|FALSE,
      DeletionProtectionEnabled = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_pool(
      OriginationIdentity = "string",
      IsoCountryCode = "string",
      MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
      DeletionProtectionEnabled = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ClientToken = "string"
    )
