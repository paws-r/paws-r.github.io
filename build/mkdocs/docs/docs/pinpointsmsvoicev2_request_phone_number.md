<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_request_phone_number</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Request an origination phone number for use in your account

### Description

Request an origination phone number for use in your account. For more
information on phone number request see [Requesting a
number](https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-request-number.html)
in the *Amazon Pinpoint User Guide*.

### Usage

    pinpointsmsvoicev2_request_phone_number(IsoCountryCode, MessageType,
      NumberCapabilities, NumberType, OptOutListName, PoolId, RegistrationId,
      DeletionProtectionEnabled, Tags, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_request_phone_number_:_IsoCountryCode">IsoCountryCode</code></td>
<td><p>[required] The two-character code, in ISO 3166-1 alpha-2 format,
for the country or region.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_request_phone_number_:_MessageType">MessageType</code></td>
<td><p>[required] The type of message. Valid values are TRANSACTIONAL
for messages that are critical or time-sensitive and PROMOTIONAL for
messages that aren't critical or time-sensitive.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_request_phone_number_:_NumberCapabilities">NumberCapabilities</code></td>
<td><p>[required] Indicates if the phone number will be used for text
messages, voice messages, or both.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_request_phone_number_:_NumberType">NumberType</code></td>
<td><p>[required] The type of phone number to request.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_request_phone_number_:_OptOutListName">OptOutListName</code></td>
<td><p>The name of the OptOutList to associate with the phone number.
You can use the OutOutListName or OptPutListArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_request_phone_number_:_PoolId">PoolId</code></td>
<td><p>The pool to associated with the phone number. You can use the
PoolId or PoolArn.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_request_phone_number_:_RegistrationId">RegistrationId</code></td>
<td><p>Use this field to attach your phone number for an external
registration process.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_request_phone_number_:_DeletionProtectionEnabled">DeletionProtectionEnabled</code></td>
<td><p>By default this is set to false. When set to true the phone
number can't be deleted.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_request_phone_number_:_Tags">Tags</code></td>
<td><p>An array of tags (key and value pairs) associate with the
requested phone number.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_request_phone_number_:_ClientToken">ClientToken</code></td>
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
      PhoneNumberArn = "string",
      PhoneNumberId = "string",
      PhoneNumber = "string",
      Status = "PENDING"|"ACTIVE"|"ASSOCIATING"|"DISASSOCIATING"|"DELETED",
      IsoCountryCode = "string",
      MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
      NumberCapabilities = list(
        "SMS"|"VOICE"
      ),
      NumberType = "LONG_CODE"|"TOLL_FREE"|"TEN_DLC",
      MonthlyLeasingPrice = "string",
      TwoWayEnabled = TRUE|FALSE,
      TwoWayChannelArn = "string",
      SelfManagedOptOutsEnabled = TRUE|FALSE,
      OptOutListName = "string",
      DeletionProtectionEnabled = TRUE|FALSE,
      PoolId = "string",
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

    svc$request_phone_number(
      IsoCountryCode = "string",
      MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
      NumberCapabilities = list(
        "SMS"|"VOICE"
      ),
      NumberType = "LONG_CODE"|"TOLL_FREE"|"TEN_DLC",
      OptOutListName = "string",
      PoolId = "string",
      RegistrationId = "string",
      DeletionProtectionEnabled = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ClientToken = "string"
    )
