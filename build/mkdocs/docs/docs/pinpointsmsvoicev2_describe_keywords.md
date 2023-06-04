<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_describe_keywords</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified keywords or all keywords on your origination phone number or pool

### Description

Describes the specified keywords or all keywords on your origination
phone number or pool.

A keyword is a word that you can search for on a particular phone number
or pool. It is also a specific word or phrase that an end user can send
to your number to elicit a response, such as an informational message or
a special offer. When your number receives a message that begins with a
keyword, Amazon Pinpoint responds with a customizable message.

If you specify a keyword that isn't valid, an Error is returned.

### Usage

    pinpointsmsvoicev2_describe_keywords(OriginationIdentity, Keywords,
      Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_keywords_:_OriginationIdentity">OriginationIdentity</code></td>
<td><p>[required] The origination identity to use such as a
PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use
<code>describe_phone_numbers</code> to find the values for PhoneNumberId
and PhoneNumberArn while <code>describe_sender_ids</code> can be used to
get the values for SenderId and SenderIdArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_keywords_:_Keywords">Keywords</code></td>
<td><p>An array of keywords to search for.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_keywords_:_Filters">Filters</code></td>
<td><p>An array of keyword filters to filter the results.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_keywords_:_NextToken">NextToken</code></td>
<td><p>The token to be used for the next set of paginated results. You
don't need to supply a value for this field in the initial
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_keywords_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per each
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OriginationIdentityArn = "string",
      OriginationIdentity = "string",
      Keywords = list(
        list(
          Keyword = "string",
          KeywordMessage = "string",
          KeywordAction = "AUTOMATIC_RESPONSE"|"OPT_OUT"|"OPT_IN"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_keywords(
      OriginationIdentity = "string",
      Keywords = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "keyword-action",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
