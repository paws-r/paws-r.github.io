<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmailmessageflow_put_raw_message_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the raw content of an in-transit email message, in MIME format

### Description

Updates the raw content of an in-transit email message, in MIME format.

This example describes how to update in-transit email message. For more
information and examples for using this API, see [Updating message
content with AWS
Lambda](https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html).

Updates to an in-transit message only appear when you call
`put_raw_message_content` from an AWS Lambda function configured with a
synchronous [Run
Lambda](https://docs.aws.amazon.com/workmail/latest/adminguide/lambda.html#synchronous-rules)
rule. If you call `put_raw_message_content` on a delivered or sent
message, the message remains unchanged, even though
`get_raw_message_content` returns an updated message.

### Usage

    workmailmessageflow_put_raw_message_content(messageId, content)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmailmessageflow_put_raw_message_content_:_messageId">messageId</code></td>
<td><p>[required] The identifier of the email message being
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="workmailmessageflow_put_raw_message_content_:_content">content</code></td>
<td><p>[required] Describes the raw message content of the updated email
message.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_raw_message_content(
      messageId = "string",
      content = list(
        s3Reference = list(
          bucket = "string",
          key = "string",
          objectVersion = "string"
        )
      )
    )
