<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_update_ledger_permissions_mode</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the permissions mode of a ledger

### Description

Updates the permissions mode of a ledger.

Before you switch to the `STANDARD` permissions mode, you must first
create all required IAM policies and table tags to avoid disruption to
your users. To learn more, see [Migrating to the standard permissions
mode](https://docs.aws.amazon.com/qldb/latest/developerguide/ledger-management.basics.html#ledger-mgmt.basics.update-permissions.migrating)
in the *Amazon QLDB Developer Guide*.

### Usage

    qldb_update_ledger_permissions_mode(Name, PermissionsMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="qldb_update_ledger_permissions_mode_:_Name">Name</code></td>
<td><p>[required] The name of the ledger.</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_update_ledger_permissions_mode_:_PermissionsMode">PermissionsMode</code></td>
<td><p>[required] The permissions mode to assign to the ledger. This
parameter can have one of the following values:</p>
<ul>
<li><p><code>ALLOW_ALL</code>: A legacy permissions mode that enables
access control with API-level granularity for ledgers.</p>
<p>This mode allows users who have the <code>SendCommand</code> API
permission for this ledger to run all PartiQL commands (hence,
<code>ALLOW_ALL</code>) on any tables in the specified ledger. This mode
disregards any table-level or command-level IAM permissions policies
that you create for the ledger.</p></li>
<li><p><code>STANDARD</code>: (<em>Recommended</em>) A permissions mode
that enables access control with finer granularity for ledgers, tables,
and PartiQL commands.</p>
<p>By default, this mode denies all user requests to run any PartiQL
commands on any tables in this ledger. To allow PartiQL commands to run,
you must create IAM permissions policies for specific table resources
and PartiQL actions, in addition to the <code>SendCommand</code> API
permission for the ledger. For information, see <a
href="https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html">Getting
started with the standard permissions mode</a> in the <em>Amazon QLDB
Developer Guide</em>.</p></li>
</ul>
<p>We strongly recommend using the <code>STANDARD</code> permissions
mode to maximize the security of your ledger data.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Arn = "string",
      PermissionsMode = "ALLOW_ALL"|"STANDARD"
    )

### Request syntax

    svc$update_ledger_permissions_mode(
      Name = "string",
      PermissionsMode = "ALLOW_ALL"|"STANDARD"
    )
