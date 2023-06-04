<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_dismiss_user_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Dismisses contacts from an agent’s CCP and returns the agent to an available state, which allows the agent to receive a new routed contact

### Description

Dismisses contacts from an agent’s CCP and returns the agent to an
available state, which allows the agent to receive a new routed contact.
Contacts can only be dismissed if they are in a `MISSED`, `ERROR`,
`ENDED`, or `REJECTED` state in the [Agent Event
Stream](https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html).

### Usage

    connect_dismiss_user_contact(UserId, InstanceId, ContactId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_dismiss_user_contact_:_UserId">UserId</code></td>
<td><p>[required] The identifier of the user account.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_dismiss_user_contact_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
find the instanceId in the ARN of the instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_dismiss_user_contact_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$dismiss_user_contact(
      UserId = "string",
      InstanceId = "string",
      ContactId = "string"
    )
