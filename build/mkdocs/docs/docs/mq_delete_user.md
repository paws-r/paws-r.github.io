<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_delete_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an ActiveMQ user

### Description

Deletes an ActiveMQ user.

### Usage

    mq_delete_user(BrokerId, Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mq_delete_user_:_BrokerId">BrokerId</code></td>
<td><p>[required] The unique ID that Amazon MQ generates for the
broker.</p></td>
</tr>
<tr class="even">
<td><code id="mq_delete_user_:_Username">Username</code></td>
<td><p>[required] The username of the ActiveMQ user. This value can
contain only alphanumeric characters, dashes, periods, underscores, and
tildes (- . _ ~). This value must be 2-100 characters long.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user(
      BrokerId = "string",
      Username = "string"
    )
