<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_send_bounce</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates and sends a bounce message to the sender of an email you received through Amazon SES

### Description

Generates and sends a bounce message to the sender of an email you
received through Amazon SES. You can only use this API on an email up to
24 hours after you receive it.

You cannot use this API to send generic bounces for mail that was not
received by Amazon SES.

For information about receiving email through Amazon SES, see the
[Amazon SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email.html).

You can execute this operation no more than once per second.

### Usage

    ses_send_bounce(OriginalMessageId, BounceSender, Explanation,
      MessageDsn, BouncedRecipientInfoList, BounceSenderArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_send_bounce_:_OriginalMessageId">OriginalMessageId</code></td>
<td><p>[required] The message ID of the message to be bounced.</p></td>
</tr>
<tr class="even">
<td><code id="ses_send_bounce_:_BounceSender">BounceSender</code></td>
<td><p>[required] The address to use in the "From" header of the bounce
message. This must be an identity that you have verified with Amazon
SES.</p></td>
</tr>
<tr class="odd">
<td><code id="ses_send_bounce_:_Explanation">Explanation</code></td>
<td><p>Human-readable text for the bounce message to explain the
failure. If not specified, the text will be auto-generated based on the
bounced recipient information.</p></td>
</tr>
<tr class="even">
<td><code id="ses_send_bounce_:_MessageDsn">MessageDsn</code></td>
<td><p>Message-related DSN fields. If not specified, Amazon SES will
choose the values.</p></td>
</tr>
<tr class="odd">
<td><code
id="ses_send_bounce_:_BouncedRecipientInfoList">BouncedRecipientInfoList</code></td>
<td><p>[required] A list of recipients of the bounced message, including
the information required to create the Delivery Status Notifications
(DSNs) for the recipients. You must specify at least one
<code>BouncedRecipientInfo</code> in the list.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_send_bounce_:_BounceSenderArn">BounceSenderArn</code></td>
<td><p>This parameter is used only for sending authorization. It is the
ARN of the identity that is associated with the sending authorization
policy that permits you to use the address in the "From" header of the
bounce. For more information about sending authorization, see the <a
href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon
SES Developer Guide</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MessageId = "string"
    )

### Request syntax

    svc$send_bounce(
      OriginalMessageId = "string",
      BounceSender = "string",
      Explanation = "string",
      MessageDsn = list(
        ReportingMta = "string",
        ArrivalDate = as.POSIXct(
          "2015-01-01"
        ),
        ExtensionFields = list(
          list(
            Name = "string",
            Value = "string"
          )
        )
      ),
      BouncedRecipientInfoList = list(
        list(
          Recipient = "string",
          RecipientArn = "string",
          BounceType = "DoesNotExist"|"MessageTooLarge"|"ExceededQuota"|"ContentRejected"|"Undefined"|"TemporaryFailure",
          RecipientDsnFields = list(
            FinalRecipient = "string",
            Action = "failed"|"delayed"|"delivered"|"relayed"|"expanded",
            RemoteMta = "string",
            Status = "string",
            DiagnosticCode = "string",
            LastAttemptDate = as.POSIXct(
              "2015-01-01"
            ),
            ExtensionFields = list(
              list(
                Name = "string",
                Value = "string"
              )
            )
          )
        )
      ),
      BounceSenderArn = "string"
    )
