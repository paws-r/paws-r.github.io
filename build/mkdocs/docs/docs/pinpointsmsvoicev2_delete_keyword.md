<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_delete_keyword</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing keyword from an origination phone number or pool

### Description

Deletes an existing keyword from an origination phone number or pool.

A keyword is a word that you can search for on a particular phone number
or pool. It is also a specific word or phrase that an end user can send
to your number to elicit a response, such as an informational message or
a special offer. When your number receives a message that begins with a
keyword, Amazon Pinpoint responds with a customizable message.

Keywords "HELP" and "STOP" can't be deleted or modified.

### Usage

    pinpointsmsvoicev2_delete_keyword(OriginationIdentity, Keyword)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_delete_keyword_:_OriginationIdentity">OriginationIdentity</code></td>
<td><p>[required] The origination identity to use such as a
PhoneNumberId, PhoneNumberArn, PoolId or PoolArn. You can use
<code>describe_phone_numbers</code> to find the values for PhoneNumberId
and PhoneNumberArn and <code>describe_pools</code> to find the values of
PoolId and PoolArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_delete_keyword_:_Keyword">Keyword</code></td>
<td><p>[required] The keyword to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OriginationIdentityArn = "string",
      OriginationIdentity = "string",
      Keyword = "string",
      KeywordMessage = "string",
      KeywordAction = "AUTOMATIC_RESPONSE"|"OPT_OUT"|"OPT_IN"
    )

### Request syntax

    svc$delete_keyword(
      OriginationIdentity = "string",
      Keyword = "string"
    )
