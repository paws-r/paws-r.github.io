<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_start_task_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates a flow to start a new task

### Description

Initiates a flow to start a new task.

### Usage

    connect_start_task_contact(InstanceId, PreviousContactId, ContactFlowId,
      Attributes, Name, References, Description, ClientToken, ScheduledTime,
      TaskTemplateId, QuickConnectId, RelatedContactId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_start_task_contact_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_task_contact_:_PreviousContactId">PreviousContactId</code></td>
<td><p>The identifier of the previous chat, voice, or task
contact.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_task_contact_:_ContactFlowId">ContactFlowId</code></td>
<td><p>The identifier of the flow for initiating the tasks. To see the
ContactFlowId in the Amazon Connect console user interface, on the
navigation menu go to <strong>Routing</strong>, <strong>Contact
Flows</strong>. Choose the flow. On the flow page, under the name of the
flow, choose <strong>Show additional flow information</strong>. The
ContactFlowId is the last part of the ARN, shown here in bold:</p>
<p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<strong>846ec553-a005-41c0-8341-xxxxxxxxxxxx</strong></p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_task_contact_:_Attributes">Attributes</code></td>
<td><p>A custom key-value pair using an attribute map. The attributes
are standard Amazon Connect attributes, and can be accessed in flows
just like any other contact attributes.</p>
<p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_start_task_contact_:_Name">Name</code></td>
<td><p>[required] The name of a task that is shown to an agent in the
Contact Control Panel (CCP).</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_task_contact_:_References">References</code></td>
<td><p>A formatted URL that is shown to an agent in the Contact Control
Panel (CCP).</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_task_contact_:_Description">Description</code></td>
<td><p>A description of the task that is shown to an agent in the
Contact Control Panel (CCP).</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_task_contact_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_task_contact_:_ScheduledTime">ScheduledTime</code></td>
<td><p>The timestamp, in Unix Epoch seconds format, at which to start
running the inbound flow. The scheduled time cannot be in the past. It
must be within up to 6 days in future.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_task_contact_:_TaskTemplateId">TaskTemplateId</code></td>
<td><p>A unique identifier for the task template.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_task_contact_:_QuickConnectId">QuickConnectId</code></td>
<td><p>The identifier for the quick connect.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_task_contact_:_RelatedContactId">RelatedContactId</code></td>
<td><p>The contactId that is <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/tasks.html#linked-tasks">related</a>
to this contact.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactId = "string"
    )

### Request syntax

    svc$start_task_contact(
      InstanceId = "string",
      PreviousContactId = "string",
      ContactFlowId = "string",
      Attributes = list(
        "string"
      ),
      Name = "string",
      References = list(
        list(
          Value = "string",
          Type = "URL"|"ATTACHMENT"|"NUMBER"|"STRING"|"DATE"|"EMAIL"
        )
      ),
      Description = "string",
      ClientToken = "string",
      ScheduledTime = as.POSIXct(
        "2015-01-01"
      ),
      TaskTemplateId = "string",
      QuickConnectId = "string",
      RelatedContactId = "string"
    )
