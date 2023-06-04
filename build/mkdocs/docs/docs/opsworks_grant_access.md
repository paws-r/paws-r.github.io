<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_grant_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action can be used only with Windows stacks

### Description

This action can be used only with Windows stacks.

Grants RDP access to a Windows instance for a specified time period.

### Usage

    opsworks_grant_access(InstanceId, ValidForInMinutes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_grant_access_:_InstanceId">InstanceId</code></td>
<td><p>[required] The instance's AWS OpsWorks Stacks ID.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_grant_access_:_ValidForInMinutes">ValidForInMinutes</code></td>
<td><p>The length of time (in minutes) that the grant is valid. When the
grant expires at the end of this period, the user will no longer be able
to use the credentials to log in. If the user is logged in at the time,
he or she automatically will be logged out.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TemporaryCredential = list(
        Username = "string",
        Password = "string",
        ValidForInMinutes = 123,
        InstanceId = "string"
      )
    )

### Request syntax

    svc$grant_access(
      InstanceId = "string",
      ValidForInMinutes = 123
    )
