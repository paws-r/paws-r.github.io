<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_create_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an ActiveMQ user

### Description

Creates an ActiveMQ user.

### Usage

    mq_create_user(BrokerId, ConsoleAccess, Groups, Password, Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mq_create_user_:_BrokerId">BrokerId</code></td>
<td><p>[required] The unique ID that Amazon MQ generates for the
broker.</p></td>
</tr>
<tr class="even">
<td><code id="mq_create_user_:_ConsoleAccess">ConsoleAccess</code></td>
<td><p>Enables access to the ActiveMQ Web Console for the ActiveMQ
user.</p></td>
</tr>
<tr class="odd">
<td><code id="mq_create_user_:_Groups">Groups</code></td>
<td><p>The list of groups (20 maximum) to which the ActiveMQ user
belongs. This value can contain only alphanumeric characters, dashes,
periods, underscores, and tildes (- . _ ~). This value must be 2-100
characters long.</p></td>
</tr>
<tr class="even">
<td><code id="mq_create_user_:_Password">Password</code></td>
<td><p>[required] Required. The password of the user. This value must be
at least 12 characters long, must contain at least 4 unique characters,
and must not contain commas, colons, or equal signs (,:=).</p></td>
</tr>
<tr class="odd">
<td><code id="mq_create_user_:_Username">Username</code></td>
<td><p>[required] The username of the ActiveMQ user. This value can
contain only alphanumeric characters, dashes, periods, underscores, and
tildes (- . _ ~). This value must be 2-100 characters long.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_user(
      BrokerId = "string",
      ConsoleAccess = TRUE|FALSE,
      Groups = list(
        "string"
      ),
      Password = "string",
      Username = "string"
    )
