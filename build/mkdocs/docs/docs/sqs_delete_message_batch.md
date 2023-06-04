<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_delete_message_batch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes up to ten messages from the specified queue

### Description

Deletes up to ten messages from the specified queue. This is a batch
version of ` DeleteMessage.` The result of the action on each message is
reported individually in the response.

Because the batch request can result in a combination of successful and
unsuccessful actions, you should check for batch errors even when the
call returns an HTTP status code of `200`.

Some actions take lists of parameters. These lists are specified using
the `param.n` notation. Values of `n` are integers starting from 1. For
example, a parameter list with two elements looks like this:

`⁠&AttributeName.1=first⁠`

`⁠&AttributeName.2=second⁠`

### Usage

    sqs_delete_message_batch(QueueUrl, Entries)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sqs_delete_message_batch_:_QueueUrl">QueueUrl</code></td>
<td><p>[required] The URL of the Amazon SQS queue from which messages
are deleted.</p>
<p>Queue URLs and names are case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code id="sqs_delete_message_batch_:_Entries">Entries</code></td>
<td><p>[required] A list of receipt handles for the messages to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Successful = list(
        list(
          Id = "string"
        )
      ),
      Failed = list(
        list(
          Id = "string",
          SenderFault = TRUE|FALSE,
          Code = "string",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$delete_message_batch(
      QueueUrl = "string",
      Entries = list(
        list(
          Id = "string",
          ReceiptHandle = "string"
        )
      )
    )
