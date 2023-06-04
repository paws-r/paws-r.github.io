<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_update_incident_record</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update the details of an incident record

### Description

Update the details of an incident record. You can use this operation to
update an incident record from the defined chat channel. For more
information about using actions in chat channels, see [Interacting
through
chat](https://docs.aws.amazon.com/incident-manager/latest/userguide/chat.html#chat-interact).

### Usage

    ssmincidents_update_incident_record(arn, chatChannel, clientToken,
      impact, notificationTargets, status, summary, title)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssmincidents_update_incident_record_:_arn">arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the incident record
you are updating.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_update_incident_record_:_chatChannel">chatChannel</code></td>
<td><p>The Chatbot chat channel where responders can
collaborate.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_update_incident_record_:_clientToken">clientToken</code></td>
<td><p>A token that ensures that a client calls the operation only once
with the specified details.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_update_incident_record_:_impact">impact</code></td>
<td><p>Defines the impact of the incident to customers and applications.
If you provide an impact for an incident, it overwrites the impact
provided by the response plan.</p>
<p><strong>Possible impacts:</strong></p>
<ul>
<li><p><code>1</code> - Critical impact, full application failure that
impacts many to all customers.</p></li>
<li><p><code>2</code> - High impact, partial application failure with
impact to many customers.</p></li>
<li><p><code>3</code> - Medium impact, the application is providing
reduced service to customers.</p></li>
<li><p><code>4</code> - Low impact, customer aren't impacted by the
problem yet.</p></li>
<li><p><code>5</code> - No impact, customers aren't currently impacted
but urgent action is needed to avoid impact.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_update_incident_record_:_notificationTargets">notificationTargets</code></td>
<td><p>The Amazon SNS targets that Incident Manager notifies when a
client updates an incident.</p>
<p>Using multiple SNS topics creates redundancy in the event that a
Region is down during the incident.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_update_incident_record_:_status">status</code></td>
<td><p>The status of the incident. Possible statuses are
<code>Open</code> or <code>Resolved</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_update_incident_record_:_summary">summary</code></td>
<td><p>A longer description of what occurred during the
incident.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_update_incident_record_:_title">title</code></td>
<td><p>A brief description of the incident.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_incident_record(
      arn = "string",
      chatChannel = list(
        chatbotSns = list(
          "string"
        ),
        empty = list()
      ),
      clientToken = "string",
      impact = 123,
      notificationTargets = list(
        list(
          snsTopicArn = "string"
        )
      ),
      status = "OPEN"|"RESOLVED",
      summary = "string",
      title = "string"
    )
