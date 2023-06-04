<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_describe_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about an ActiveMQ user

### Description

Returns information about an ActiveMQ user.

### Usage

    mq_describe_user(BrokerId, Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mq_describe_user_:_BrokerId">BrokerId</code></td>
<td><p>[required] The unique ID that Amazon MQ generates for the
broker.</p></td>
</tr>
<tr class="even">
<td><code id="mq_describe_user_:_Username">Username</code></td>
<td><p>[required] The username of the ActiveMQ user. This value can
contain only alphanumeric characters, dashes, periods, underscores, and
tildes (- . _ ~). This value must be 2-100 characters long.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BrokerId = "string",
      ConsoleAccess = TRUE|FALSE,
      Groups = list(
        "string"
      ),
      Pending = list(
        ConsoleAccess = TRUE|FALSE,
        Groups = list(
          "string"
        ),
        PendingChange = "CREATE"|"UPDATE"|"DELETE"
      ),
      Username = "string"
    )

### Request syntax

    svc$describe_user(
      BrokerId = "string",
      Username = "string"
    )
