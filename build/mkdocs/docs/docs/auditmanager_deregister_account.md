<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_deregister_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters an account in Audit Manager

### Description

Deregisters an account in Audit Manager.

Before you deregister, you can use the `update_settings` API operation
to set your preferred data retention policy. By default, Audit Manager
retains your data. If you want to delete your data, you can use the
`DeregistrationPolicy` attribute to request the deletion of your data.

For more information about data retention, see [Data
Protection](https://docs.aws.amazon.com/audit-manager/latest/userguide/data-protection.html)
in the *Audit Manager User Guide*.

### Usage

    auditmanager_deregister_account()

### Value

A list with the following syntax:

    list(
      status = "ACTIVE"|"INACTIVE"|"PENDING_ACTIVATION"
    )

### Request syntax

    svc$deregister_account()
