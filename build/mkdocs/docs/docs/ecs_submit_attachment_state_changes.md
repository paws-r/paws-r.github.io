<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_submit_attachment_state_changes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent

### Description

This action is only used by the Amazon ECS agent, and it is not intended
for use outside of the agent.

Sent to acknowledge that an attachment changed states.

### Usage

    ecs_submit_attachment_state_changes(cluster, attachments)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_submit_attachment_state_changes_:_cluster">cluster</code></td>
<td><p>The short name or full ARN of the cluster that hosts the
container instance the attachment belongs to.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_submit_attachment_state_changes_:_attachments">attachments</code></td>
<td><p>[required] Any attachments associated with the state change
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      acknowledgment = "string"
    )

### Request syntax

    svc$submit_attachment_state_changes(
      cluster = "string",
      attachments = list(
        list(
          attachmentArn = "string",
          status = "string"
        )
      )
    )
