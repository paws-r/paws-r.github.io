<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_put_keyword</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a keyword configuration on an origination phone number or pool

### Description

Creates or updates a keyword configuration on an origination phone
number or pool.

A keyword is a word that you can search for on a particular phone number
or pool. It is also a specific word or phrase that an end user can send
to your number to elicit a response, such as an informational message or
a special offer. When your number receives a message that begins with a
keyword, Amazon Pinpoint responds with a customizable message.

If you specify a keyword that isn't valid, an Error is returned.

### Usage

    pinpointsmsvoicev2_put_keyword(OriginationIdentity, Keyword,
      KeywordMessage, KeywordAction)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_put_keyword_:_OriginationIdentity">OriginationIdentity</code></td>
<td><p>[required] The origination identity to use such as a
PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use
<code>describe_phone_numbers</code> get the values for PhoneNumberId and
PhoneNumberArn while <code>describe_sender_ids</code> can be used to get
the values for SenderId and SenderIdArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_put_keyword_:_Keyword">Keyword</code></td>
<td><p>[required] The new keyword to add.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_put_keyword_:_KeywordMessage">KeywordMessage</code></td>
<td><p>[required] The message associated with the keyword.</p>
<ul>
<li><p>AUTOMATIC_RESPONSE: A message is sent to the recipient.</p></li>
<li><p>OPT_OUT: Keeps the recipient from receiving future
messages.</p></li>
<li><p>OPT_IN: The recipient wants to receive future messages.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_put_keyword_:_KeywordAction">KeywordAction</code></td>
<td><p>The action to perform for the new keyword when it is
received.</p></td>
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

    svc$put_keyword(
      OriginationIdentity = "string",
      Keyword = "string",
      KeywordMessage = "string",
      KeywordAction = "AUTOMATIC_RESPONSE"|"OPT_OUT"|"OPT_IN"
    )
