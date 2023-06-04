<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_relational_database_master_user_password</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the current, previous, or pending versions of the master user password for a Lightsail database

### Description

Returns the current, previous, or pending versions of the master user
password for a Lightsail database.

The `get_relational_database_master_user_password` operation supports
tag-based access control via resource tags applied to the resource
identified by relationalDatabaseName.

### Usage

    lightsail_get_relational_database_master_user_password(
      relationalDatabaseName, passwordVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_relational_database_master_user_password_:_relationalDatabaseName">relationalDatabaseName</code></td>
<td><p>[required] The name of your database for which to get the master
user password.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_relational_database_master_user_password_:_passwordVersion">passwordVersion</code></td>
<td><p>The password version to return.</p>
<p>Specifying <code>CURRENT</code> or <code>PREVIOUS</code> returns the
current or previous passwords respectively. Specifying
<code>PENDING</code> returns the newest version of the password that
will rotate to <code>CURRENT</code>. After the <code>PENDING</code>
password rotates to <code>CURRENT</code>, the <code>PENDING</code>
password is no longer available.</p>
<p>Default: <code>CURRENT</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      masterUserPassword = "string",
      createdAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_relational_database_master_user_password(
      relationalDatabaseName = "string",
      passwordVersion = "CURRENT"|"PREVIOUS"|"PENDING"
    )
