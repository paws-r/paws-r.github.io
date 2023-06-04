<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_register_to_work_mail</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers an existing and disabled user, group, or resource for WorkMail use by associating a mailbox and calendaring capabilities

### Description

Registers an existing and disabled user, group, or resource for WorkMail
use by associating a mailbox and calendaring capabilities. It performs
no change if the user, group, or resource is enabled and fails if the
user, group, or resource is deleted. This operation results in the
accumulation of costs. For more information, see
[Pricing](https://aws.amazon.com/workmail/pricing/). The equivalent
console functionality for this operation is *Enable*.

Users can either be created by calling the `create_user` API operation
or they can be synchronized from your directory. For more information,
see `deregister_from_work_mail`.

### Usage

    workmail_register_to_work_mail(OrganizationId, EntityId, Email)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_register_to_work_mail_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization under which the
user, group, or resource exists.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_register_to_work_mail_:_EntityId">EntityId</code></td>
<td><p>[required] The identifier for the user, group, or resource to be
updated.</p></td>
</tr>
<tr class="odd">
<td><code id="workmail_register_to_work_mail_:_Email">Email</code></td>
<td><p>[required] The email for the user, group, or resource to be
updated.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_to_work_mail(
      OrganizationId = "string",
      EntityId = "string",
      Email = "string"
    )
