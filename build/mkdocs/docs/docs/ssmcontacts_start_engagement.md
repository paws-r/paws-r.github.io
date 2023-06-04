<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_start_engagement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an engagement to a contact or escalation plan

### Description

Starts an engagement to a contact or escalation plan. The engagement
engages each contact specified in the incident.

### Usage

    ssmcontacts_start_engagement(ContactId, Sender, Subject, Content,
      PublicSubject, PublicContent, IncidentId, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_start_engagement_:_ContactId">ContactId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact being
engaged.</p></td>
</tr>
<tr class="even">
<td><code id="ssmcontacts_start_engagement_:_Sender">Sender</code></td>
<td><p>[required] The user that started the engagement.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_start_engagement_:_Subject">Subject</code></td>
<td><p>[required] The secure subject of the message that was sent to the
contact. Use this field for engagements to <code>VOICE</code> or
<code>EMAIL</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_start_engagement_:_Content">Content</code></td>
<td><p>[required] The secure content of the message that was sent to the
contact. Use this field for engagements to <code>VOICE</code> or
<code>EMAIL</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_start_engagement_:_PublicSubject">PublicSubject</code></td>
<td><p>The insecure subject of the message that was sent to the contact.
Use this field for engagements to <code>SMS</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_start_engagement_:_PublicContent">PublicContent</code></td>
<td><p>The insecure content of the message that was sent to the contact.
Use this field for engagements to <code>SMS</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_start_engagement_:_IncidentId">IncidentId</code></td>
<td><p>The ARN of the incident that the engagement is part of.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_start_engagement_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>A token ensuring that the operation is called only once with the
specified details.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EngagementArn = "string"
    )

### Request syntax

    svc$start_engagement(
      ContactId = "string",
      Sender = "string",
      Subject = "string",
      Content = "string",
      PublicSubject = "string",
      PublicContent = "string",
      IncidentId = "string",
      IdempotencyToken = "string"
    )
