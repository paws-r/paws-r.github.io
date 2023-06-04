<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_remove_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Revokes the permission of another Amazon Web Services account to be able to put events to the specified event bus

### Description

Revokes the permission of another Amazon Web Services account to be able
to put events to the specified event bus. Specify the account to revoke
by the `StatementId` value that you associated with the account when you
granted it permission with `put_permission`. You can find the
`StatementId` by using `describe_event_bus`.

### Usage

    eventbridge_remove_permission(StatementId, RemoveAllPermissions,
      EventBusName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_remove_permission_:_StatementId">StatementId</code></td>
<td><p>The statement ID corresponding to the account that is no longer
allowed to put events to the default event bus.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_remove_permission_:_RemoveAllPermissions">RemoveAllPermissions</code></td>
<td><p>Specifies whether to remove all permissions.</p></td>
</tr>
<tr class="odd">
<td><code
id="eventbridge_remove_permission_:_EventBusName">EventBusName</code></td>
<td><p>The name of the event bus to revoke permissions for. If you omit
this, the default event bus is used.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_permission(
      StatementId = "string",
      RemoveAllPermissions = TRUE|FALSE,
      EventBusName = "string"
    )
