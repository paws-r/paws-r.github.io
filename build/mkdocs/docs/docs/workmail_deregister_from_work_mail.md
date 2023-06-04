<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_deregister_from_work_mail</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Mark a user, group, or resource as no longer used in WorkMail

### Description

Mark a user, group, or resource as no longer used in WorkMail. This
action disassociates the mailbox and schedules it for clean-up. WorkMail
keeps mailboxes for 30 days before they are permanently removed. The
functionality in the console is *Disable*.

### Usage

    workmail_deregister_from_work_mail(OrganizationId, EntityId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_deregister_from_work_mail_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization under which the
WorkMail entity exists.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_deregister_from_work_mail_:_EntityId">EntityId</code></td>
<td><p>[required] The identifier for the member (user or group) to be
updated.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_from_work_mail(
      OrganizationId = "string",
      EntityId = "string"
    )
