<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_register_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables Audit Manager for the specified Amazon Web Services account

### Description

Enables Audit Manager for the specified Amazon Web Services account.

### Usage

    auditmanager_register_account(kmsKey, delegatedAdminAccount)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="auditmanager_register_account_:_kmsKey">kmsKey</code></td>
<td><p>The KMS key details.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_register_account_:_delegatedAdminAccount">delegatedAdminAccount</code></td>
<td><p>The delegated administrator account for Audit Manager.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = "ACTIVE"|"INACTIVE"|"PENDING_ACTIVATION"
    )

### Request syntax

    svc$register_account(
      kmsKey = "string",
      delegatedAdminAccount = "string"
    )
