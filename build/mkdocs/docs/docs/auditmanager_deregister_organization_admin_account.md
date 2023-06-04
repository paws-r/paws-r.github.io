<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_deregister_organization_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified Amazon Web Services account as a delegated administrator for Audit Manager

### Description

Removes the specified Amazon Web Services account as a delegated
administrator for Audit Manager.

When you remove a delegated administrator from your Audit Manager
settings, you continue to have access to the evidence that you
previously collected under that account. This is also the case when you
deregister a delegated administrator from Organizations. However, Audit
Manager stops collecting and attaching evidence to that delegated
administrator account moving forward.

Keep in mind the following cleanup task if you use evidence finder:

Before you use your management account to remove a delegated
administrator, make sure that the current delegated administrator
account signs in to Audit Manager and disables evidence finder first.
Disabling evidence finder automatically deletes the event data store
that was created in their account when they enabled evidence finder. If
this task isn’t completed, the event data store remains in their
account. In this case, we recommend that the original delegated
administrator goes to CloudTrail Lake and manually [deletes the event
data
store](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-eds-disable-termination.html).

This cleanup task is necessary to ensure that you don't end up with
multiple event data stores. Audit Manager ignores an unused event data
store after you remove or change a delegated administrator account.
However, the unused event data store continues to incur storage costs
from CloudTrail Lake if you don't delete it.

When you deregister a delegated administrator account for Audit Manager,
the data for that account isn’t deleted. If you want to delete resource
data for a delegated administrator account, you must perform that task
separately before you deregister the account. Either, you can do this in
the Audit Manager console. Or, you can use one of the delete API
operations that are provided by Audit Manager.

To delete your Audit Manager resource data, see the following
instructions:

-   `delete_assessment` (see also: [Deleting an
    assessment](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-assessment.html)
    in the *Audit Manager User Guide*)

-   `delete_assessment_framework` (see also: [Deleting a custom
    framework](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-custom-framework.html)
    in the *Audit Manager User Guide*)

-   `delete_assessment_framework_share` (see also: [Deleting a share
    request](https://docs.aws.amazon.com/audit-manager/latest/userguide/deleting-shared-framework-requests.html)
    in the *Audit Manager User Guide*)

-   `delete_assessment_report` (see also: [Deleting an assessment
    report](https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#delete-assessment-report-steps)
    in the *Audit Manager User Guide*)

-   `delete_control` (see also: [Deleting a custom
    control](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-controls.html)
    in the *Audit Manager User Guide*)

At this time, Audit Manager doesn't provide an option to delete evidence
for a specific delegated administrator. Instead, when your management
account deregisters Audit Manager, we perform a cleanup for the current
delegated administrator account at the time of deregistration.

### Usage

    auditmanager_deregister_organization_admin_account(adminAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_deregister_organization_admin_account_:_adminAccountId">adminAccountId</code></td>
<td><p>The identifier for the administrator account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_organization_admin_account(
      adminAccountId = "string"
    )
