<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Audit Manager

### Description

Welcome to the Audit Manager API reference. This guide is for developers
who need detailed information about the Audit Manager API operations,
data types, and errors.

Audit Manager is a service that provides automated evidence collection
so that you can continually audit your Amazon Web Services usage. You
can use it to assess the effectiveness of your controls, manage risk,
and simplify compliance.

Audit Manager provides prebuilt frameworks that structure and automate
assessments for a given compliance standard. Frameworks include a
prebuilt collection of controls with descriptions and testing
procedures. These controls are grouped according to the requirements of
the specified compliance standard or regulation. You can also customize
frameworks and controls to support internal audits with specific
requirements.

Use the following links to get started with the Audit Manager API:

-   [Actions](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Operations.html):
    An alphabetical list of all Audit Manager API operations.

-   [Data
    types](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Types.html):
    An alphabetical list of all Audit Manager data types.

-   [Common
    parameters](https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonParameters.html):
    Parameters that all operations can use.

-   [Common
    errors](https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonErrors.html):
    Client and server errors that all operations can return.

If you're new to Audit Manager, we recommend that you review the [Audit
Manager User
Guide](https://docs.aws.amazon.com/audit-manager/latest/userguide/what-is.html).

### Usage

    auditmanager(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="auditmanager_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- auditmanager(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td
style="text-align: left;"><a href="../auditmanager_associate_assessment_report_evidence_folder/"> associate_assessment_report_evidence_folder </a></td>
<td style="text-align: left;">Associates an evidence folder to an
assessment report in an Audit Manager assessment</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../auditmanager_batch_associate_assessment_report_evidence/"> batch_associate_assessment_report_evidence </a></td>
<td style="text-align: left;">Associates a list of evidence to an
assessment report in an Audit Manager assessment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_batch_create_delegation_by_assessment/"> batch_create_delegation_by_assessment </a></td>
<td style="text-align: left;">Creates a batch of delegations for an
assessment in Audit Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_batch_delete_delegation_by_assessment/"> batch_delete_delegation_by_assessment </a></td>
<td style="text-align: left;">Deletes a batch of delegations for an
assessment in Audit Manager</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../auditmanager_batch_disassociate_assessment_report_evidence/"> batch_disassociate_assessment_report_evidence </a></td>
<td style="text-align: left;">Disassociates a list of evidence from an
assessment report in Audit Manager</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../auditmanager_batch_import_evidence_to_assessment_control/"> batch_import_evidence_to_assessment_control </a></td>
<td style="text-align: left;">Uploads one or more pieces of evidence to
a control in an Audit Manager assessment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_create_assessment/"> create_assessment </a></td>
<td style="text-align: left;">Creates an assessment in Audit
Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_create_assessment_framework/"> create_assessment_framework </a></td>
<td style="text-align: left;">Creates a custom framework in Audit
Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_create_assessment_report/"> create_assessment_report </a></td>
<td style="text-align: left;">Creates an assessment report for the
specified assessment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_create_control/"> create_control </a></td>
<td style="text-align: left;">Creates a new custom control in Audit
Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_delete_assessment/"> delete_assessment </a></td>
<td style="text-align: left;">Deletes an assessment in Audit
Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_delete_assessment_framework/"> delete_assessment_framework </a></td>
<td style="text-align: left;">Deletes a custom framework in Audit
Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_delete_assessment_framework_share/"> delete_assessment_framework_share </a></td>
<td style="text-align: left;">Deletes a share request for a custom
framework in Audit Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_delete_assessment_report/"> delete_assessment_report </a></td>
<td style="text-align: left;">Deletes an assessment report in Audit
Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_delete_control/"> delete_control </a></td>
<td style="text-align: left;">Deletes a custom control in Audit
Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_deregister_account/"> deregister_account </a></td>
<td style="text-align: left;">Deregisters an account in Audit
Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_deregister_organization_admin_account/"> deregister_organization_admin_account </a></td>
<td style="text-align: left;">Removes the specified Amazon Web Services
account as a delegated administrator for Audit Manager</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../auditmanager_disassociate_assessment_report_evidence_folder/"> disassociate_assessment_report_evidence_folder </a></td>
<td style="text-align: left;">Disassociates an evidence folder from the
specified assessment report in Audit Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_get_account_status/"> get_account_status </a></td>
<td style="text-align: left;">Returns the registration status of an
account in Audit Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_get_assessment/"> get_assessment </a></td>
<td style="text-align: left;">Returns an assessment from Audit
Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_get_assessment_framework/"> get_assessment_framework </a></td>
<td style="text-align: left;">Returns a framework from Audit
Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_get_assessment_report_url/"> get_assessment_report_url </a></td>
<td style="text-align: left;">Returns the URL of an assessment report in
Audit Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_get_change_logs/"> get_change_logs </a></td>
<td style="text-align: left;">Returns a list of changelogs from Audit
Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_get_control/"> get_control </a></td>
<td style="text-align: left;">Returns a control from Audit Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_get_delegations/"> get_delegations </a></td>
<td style="text-align: left;">Returns a list of delegations from an
audit owner to a delegate</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_get_evidence/"> get_evidence </a></td>
<td style="text-align: left;">Returns evidence from Audit Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_get_evidence_by_evidence_folder/"> get_evidence_by_evidence_folder </a></td>
<td style="text-align: left;">Returns all evidence from a specified
evidence folder in Audit Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_get_evidence_folder/"> get_evidence_folder </a></td>
<td style="text-align: left;">Returns an evidence folder from the
specified assessment in Audit Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_get_evidence_folders_by_assessment/"> get_evidence_folders_by_assessment </a></td>
<td style="text-align: left;">Returns the evidence folders from a
specified assessment in Audit Manager</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../auditmanager_get_evidence_folders_by_assessment_control/"> get_evidence_folders_by_assessment_control </a></td>
<td style="text-align: left;">Returns a list of evidence folders that
are associated with a specified control in an Audit Manager
assessment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_get_insights/"> get_insights </a></td>
<td style="text-align: left;">Gets the latest analytics data for all
your current active assessments</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_get_insights_by_assessment/"> get_insights_by_assessment </a></td>
<td style="text-align: left;">Gets the latest analytics data for a
specific active assessment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_get_organization_admin_account/"> get_organization_admin_account </a></td>
<td style="text-align: left;">Returns the name of the delegated Amazon
Web Services administrator account for the organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_get_services_in_scope/"> get_services_in_scope </a></td>
<td style="text-align: left;">Returns a list of all of the Amazon Web
Services that you can choose to include in your assessment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_get_settings/"> get_settings </a></td>
<td style="text-align: left;">Returns the settings for the specified
Amazon Web Services account</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../auditmanager_list_assessment_control_insights_by_control_domain/"> list_assessment_control_insights_by_control_domain </a></td>
<td style="text-align: left;">Lists the latest analytics data for
controls within a specific control domain and a specific active
assessment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_list_assessment_frameworks/"> list_assessment_frameworks </a></td>
<td style="text-align: left;">Returns a list of the frameworks that are
available in the Audit Manager framework library</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../auditmanager_list_assessment_framework_share_requests/"> list_assessment_framework_share_requests </a></td>
<td style="text-align: left;">Returns a list of sent or received share
requests for custom frameworks in Audit Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_list_assessment_reports/"> list_assessment_reports </a></td>
<td style="text-align: left;">Returns a list of assessment reports
created in Audit Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_list_assessments/"> list_assessments </a></td>
<td style="text-align: left;">Returns a list of current and past
assessments from Audit Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_list_control_domain_insights/"> list_control_domain_insights </a></td>
<td style="text-align: left;">Lists the latest analytics data for
control domains across all of your active assessments</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../auditmanager_list_control_domain_insights_by_assessment/"> list_control_domain_insights_by_assessment </a></td>
<td style="text-align: left;">Lists analytics data for control domains
within a specified active assessment</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../auditmanager_list_control_insights_by_control_domain/"> list_control_insights_by_control_domain </a></td>
<td style="text-align: left;">Lists the latest analytics data for
controls within a specific control domain across all active
assessments</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_list_controls/"> list_controls </a></td>
<td style="text-align: left;">Returns a list of controls from Audit
Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_list_keywords_for_data_source/"> list_keywords_for_data_source </a></td>
<td style="text-align: left;">Returns a list of keywords that are
pre-mapped to the specified control data source</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_list_notifications/"> list_notifications </a></td>
<td style="text-align: left;">Returns a list of all Audit Manager
notifications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of tags for the specified
resource in Audit Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_register_account/"> register_account </a></td>
<td style="text-align: left;">Enables Audit Manager for the specified
Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_register_organization_admin_account/"> register_organization_admin_account </a></td>
<td style="text-align: left;">Enables an Amazon Web Services account
within the organization as the delegated administrator for Audit
Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_start_assessment_framework_share/"> start_assessment_framework_share </a></td>
<td style="text-align: left;">Creates a share request for a custom
framework in Audit Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Tags the specified resource in Audit
Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a tag from a resource in Audit
Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_update_assessment/"> update_assessment </a></td>
<td style="text-align: left;">Edits an Audit Manager assessment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_update_assessment_control/"> update_assessment_control </a></td>
<td style="text-align: left;">Updates a control within an assessment in
Audit Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_update_assessment_control_set_status/"> update_assessment_control_set_status </a></td>
<td style="text-align: left;">Updates the status of a control set in an
Audit Manager assessment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_update_assessment_framework/"> update_assessment_framework </a></td>
<td style="text-align: left;">Updates a custom framework in Audit
Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_update_assessment_framework_share/"> update_assessment_framework_share </a></td>
<td style="text-align: left;">Updates a share request for a custom
framework in Audit Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_update_assessment_status/"> update_assessment_status </a></td>
<td style="text-align: left;">Updates the status of an assessment in
Audit Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_update_control/"> update_control </a></td>
<td style="text-align: left;">Updates a custom control in Audit
Manager</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../auditmanager_update_settings/"> update_settings </a></td>
<td style="text-align: left;">Updates Audit Manager settings for the
current account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../auditmanager_validate_assessment_report_integrity/"> validate_assessment_report_integrity </a></td>
<td style="text-align: left;">Validates the integrity of an assessment
report in Audit Manager</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- auditmanager()
    svc$associate_assessment_report_evidence_folder(
      Foo = 123
    )

    ## End(Not run)
