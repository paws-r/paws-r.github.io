<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectparticipant_get_transcript</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a transcript of the session, including details about any attachments

### Description

Retrieves a transcript of the session, including details about any
attachments. For information about accessing past chat contact
transcripts for a persistent chat, see [Enable persistent
chat](https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html).

`ConnectionToken` is used for invoking this API instead of
`ParticipantToken`.

The Amazon Connect Participant Service APIs do not use [Signature
Version 4
authentication](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html).

### Usage

    connectparticipant_get_transcript(ContactId, MaxResults, NextToken,
      ScanDirection, SortOrder, StartPosition, ConnectionToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectparticipant_get_transcript_:_ContactId">ContactId</code></td>
<td><p>The contactId from the current contact chain for which transcript
is needed.</p></td>
</tr>
<tr class="even">
<td><code
id="connectparticipant_get_transcript_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the page. Default:
10.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectparticipant_get_transcript_:_NextToken">NextToken</code></td>
<td><p>The pagination token. Use the value returned previously in the
next subsequent request to retrieve the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="connectparticipant_get_transcript_:_ScanDirection">ScanDirection</code></td>
<td><p>The direction from StartPosition from which to retrieve message.
Default: BACKWARD when no StartPosition is provided, FORWARD with
StartPosition.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectparticipant_get_transcript_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for the records. Default: DESCENDING.</p></td>
</tr>
<tr class="even">
<td><code
id="connectparticipant_get_transcript_:_StartPosition">StartPosition</code></td>
<td><p>A filtering option for where to start.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectparticipant_get_transcript_:_ConnectionToken">ConnectionToken</code></td>
<td><p>[required] The authentication token associated with the
participant's connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InitialContactId = "string",
      Transcript = list(
        list(
          AbsoluteTime = "string",
          Content = "string",
          ContentType = "string",
          Id = "string",
          Type = "TYPING"|"PARTICIPANT_JOINED"|"PARTICIPANT_LEFT"|"CHAT_ENDED"|"TRANSFER_SUCCEEDED"|"TRANSFER_FAILED"|"MESSAGE"|"EVENT"|"ATTACHMENT"|"CONNECTION_ACK"|"MESSAGE_DELIVERED"|"MESSAGE_READ",
          ParticipantId = "string",
          DisplayName = "string",
          ParticipantRole = "AGENT"|"CUSTOMER"|"SYSTEM",
          Attachments = list(
            list(
              ContentType = "string",
              AttachmentId = "string",
              AttachmentName = "string",
              Status = "APPROVED"|"REJECTED"|"IN_PROGRESS"
            )
          ),
          MessageMetadata = list(
            MessageId = "string",
            Receipts = list(
              list(
                DeliveredTimestamp = "string",
                ReadTimestamp = "string",
                RecipientParticipantId = "string"
              )
            )
          ),
          RelatedContactId = "string",
          ContactId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_transcript(
      ContactId = "string",
      MaxResults = 123,
      NextToken = "string",
      ScanDirection = "FORWARD"|"BACKWARD",
      SortOrder = "DESCENDING"|"ASCENDING",
      StartPosition = list(
        Id = "string",
        AbsoluteTime = "string",
        MostRecent = 123
      ),
      ConnectionToken = "string"
    )
