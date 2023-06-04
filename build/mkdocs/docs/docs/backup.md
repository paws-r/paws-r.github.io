<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Backup

### Description

Backup

Backup is a unified backup service designed to protect Amazon Web
Services services and their associated data. Backup simplifies the
creation, migration, restoration, and deletion of backups, while also
providing reporting and auditing.

### Usage

    backup(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="backup_:_config">config</code></td>
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

    svc <- backup(
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
<td style="text-align: left;"><a href="../backup_cancel_legal_hold/"> cancel_legal_hold </a></td>
<td style="text-align: left;">This action removes the specified legal
hold on a recovery point</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_create_backup_plan/"> create_backup_plan </a></td>
<td style="text-align: left;">Creates a backup plan using a backup plan
name and backup rules</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_create_backup_selection/"> create_backup_selection </a></td>
<td style="text-align: left;">Creates a JSON document that specifies a
set of resources to assign to a backup plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_create_backup_vault/"> create_backup_vault </a></td>
<td style="text-align: left;">Creates a logical container where backups
are stored</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_create_framework/"> create_framework </a></td>
<td style="text-align: left;">Creates a framework with one or more
controls</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_create_legal_hold/"> create_legal_hold </a></td>
<td style="text-align: left;">This action creates a legal hold on a
recovery point (backup)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_create_report_plan/"> create_report_plan </a></td>
<td style="text-align: left;">Creates a report plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_delete_backup_plan/"> delete_backup_plan </a></td>
<td style="text-align: left;">Deletes a backup plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_delete_backup_selection/"> delete_backup_selection </a></td>
<td style="text-align: left;">Deletes the resource selection associated
with a backup plan that is specified by the SelectionId</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_delete_backup_vault/"> delete_backup_vault </a></td>
<td style="text-align: left;">Deletes the backup vault identified by its
name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_delete_backup_vault_access_policy/"> delete_backup_vault_access_policy </a></td>
<td style="text-align: left;">Deletes the policy document that manages
permissions on a backup vault</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../backup_delete_backup_vault_lock_configuration/"> delete_backup_vault_lock_configuration </a></td>
<td style="text-align: left;">Deletes Backup Vault Lock from a backup
vault specified by a backup vault name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_delete_backup_vault_notifications/"> delete_backup_vault_notifications </a></td>
<td style="text-align: left;">Deletes event notifications for the
specified backup vault</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_delete_framework/"> delete_framework </a></td>
<td style="text-align: left;">Deletes the framework specified by a
framework name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_delete_recovery_point/"> delete_recovery_point </a></td>
<td style="text-align: left;">Deletes the recovery point specified by a
recovery point ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_delete_report_plan/"> delete_report_plan </a></td>
<td style="text-align: left;">Deletes the report plan specified by a
report plan name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_describe_backup_job/"> describe_backup_job </a></td>
<td style="text-align: left;">Returns backup job details for the
specified BackupJobId</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_describe_backup_vault/"> describe_backup_vault </a></td>
<td style="text-align: left;">Returns metadata about a backup vault
specified by its name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_describe_copy_job/"> describe_copy_job </a></td>
<td style="text-align: left;">Returns metadata associated with creating
a copy of a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_describe_framework/"> describe_framework </a></td>
<td style="text-align: left;">Returns the framework details for the
specified FrameworkName</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_describe_global_settings/"> describe_global_settings </a></td>
<td style="text-align: left;">Describes whether the Amazon Web Services
account is opted in to cross-account backup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_describe_protected_resource/"> describe_protected_resource </a></td>
<td style="text-align: left;">Returns information about a saved
resource, including the last time it was backed up, its Amazon Resource
Name (ARN), and the Amazon Web Services service type of the saved
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_describe_recovery_point/"> describe_recovery_point </a></td>
<td style="text-align: left;">Returns metadata associated with a
recovery point, including ID, status, encryption, and lifecycle</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_describe_region_settings/"> describe_region_settings </a></td>
<td style="text-align: left;">Returns the current service opt-in
settings for the Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_describe_report_job/"> describe_report_job </a></td>
<td style="text-align: left;">Returns the details associated with
creating a report as specified by its ReportJobId</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_describe_report_plan/"> describe_report_plan </a></td>
<td style="text-align: left;">Returns a list of all report plans for an
Amazon Web Services account and Amazon Web Services Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_describe_restore_job/"> describe_restore_job </a></td>
<td style="text-align: left;">Returns metadata associated with a restore
job that is specified by a job ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_disassociate_recovery_point/"> disassociate_recovery_point </a></td>
<td style="text-align: left;">Deletes the specified continuous backup
recovery point from Backup and releases control of that continuous
backup to the source service, such as Amazon RDS</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../backup_disassociate_recovery_point_from_parent/"> disassociate_recovery_point_from_parent </a></td>
<td style="text-align: left;">This action to a specific child (nested)
recovery point removes the relationship between the specified recovery
point and its parent (composite) recovery point</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_export_backup_plan_template/"> export_backup_plan_template </a></td>
<td style="text-align: left;">Returns the backup plan that is specified
by the plan ID as a backup template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_get_backup_plan/"> get_backup_plan </a></td>
<td style="text-align: left;">Returns BackupPlan details for the
specified BackupPlanId</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_get_backup_plan_from_json/"> get_backup_plan_from_json </a></td>
<td style="text-align: left;">Returns a valid JSON document specifying a
backup plan or an error</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_get_backup_plan_from_template/"> get_backup_plan_from_template </a></td>
<td style="text-align: left;">Returns the template specified by its
templateId as a backup plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_get_backup_selection/"> get_backup_selection </a></td>
<td style="text-align: left;">Returns selection metadata and a document
in JSON format that specifies a list of resources that are associated
with a backup plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_get_backup_vault_access_policy/"> get_backup_vault_access_policy </a></td>
<td style="text-align: left;">Returns the access policy document that is
associated with the named backup vault</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_get_backup_vault_notifications/"> get_backup_vault_notifications </a></td>
<td style="text-align: left;">Returns event notifications for the
specified backup vault</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_get_legal_hold/"> get_legal_hold </a></td>
<td style="text-align: left;">This action returns details for a
specified legal hold</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_get_recovery_point_restore_metadata/"> get_recovery_point_restore_metadata </a></td>
<td style="text-align: left;">Returns a set of metadata key-value pairs
that were used to create the backup</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_get_supported_resource_types/"> get_supported_resource_types </a></td>
<td style="text-align: left;">Returns the Amazon Web Services resource
types supported by Backup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_list_backup_jobs/"> list_backup_jobs </a></td>
<td style="text-align: left;">Returns a list of existing backup jobs for
an authenticated account for the last 30 days</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_list_backup_plans/"> list_backup_plans </a></td>
<td style="text-align: left;">Returns a list of all active backup plans
for an authenticated account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_list_backup_plan_templates/"> list_backup_plan_templates </a></td>
<td style="text-align: left;">Returns metadata of your saved backup plan
templates, including the template ID, name, and the creation and
deletion dates</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_list_backup_plan_versions/"> list_backup_plan_versions </a></td>
<td style="text-align: left;">Returns version metadata of your backup
plans, including Amazon Resource Names (ARNs), backup plan IDs, creation
and deletion dates, plan names, and version IDs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_list_backup_selections/"> list_backup_selections </a></td>
<td style="text-align: left;">Returns an array containing metadata of
the resources associated with the target backup plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_list_backup_vaults/"> list_backup_vaults </a></td>
<td style="text-align: left;">Returns a list of recovery point storage
containers along with information about them</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_list_copy_jobs/"> list_copy_jobs </a></td>
<td style="text-align: left;">Returns metadata about your copy jobs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_list_frameworks/"> list_frameworks </a></td>
<td style="text-align: left;">Returns a list of all frameworks for an
Amazon Web Services account and Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_list_legal_holds/"> list_legal_holds </a></td>
<td style="text-align: left;">This action returns metadata about active
and previous legal holds</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_list_protected_resources/"> list_protected_resources </a></td>
<td style="text-align: left;">Returns an array of resources successfully
backed up by Backup, including the time the resource was saved, an
Amazon Resource Name (ARN) of the resource, and a resource type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_list_recovery_points_by_backup_vault/"> list_recovery_points_by_backup_vault </a></td>
<td style="text-align: left;">Returns detailed information about the
recovery points stored in a backup vault</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_list_recovery_points_by_legal_hold/"> list_recovery_points_by_legal_hold </a></td>
<td style="text-align: left;">This action returns recovery point ARNs
(Amazon Resource Names) of the specified legal hold</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_list_recovery_points_by_resource/"> list_recovery_points_by_resource </a></td>
<td style="text-align: left;">Returns detailed information about all the
recovery points of the type specified by a resource Amazon Resource Name
(ARN)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_list_report_jobs/"> list_report_jobs </a></td>
<td style="text-align: left;">Returns details about your report
jobs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_list_report_plans/"> list_report_plans </a></td>
<td style="text-align: left;">Returns a list of your report plans</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_list_restore_jobs/"> list_restore_jobs </a></td>
<td style="text-align: left;">Returns a list of jobs that Backup
initiated to restore a saved resource, including details about the
recovery process</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_list_tags/"> list_tags </a></td>
<td style="text-align: left;">Returns a list of key-value pairs assigned
to a target recovery point, backup plan, or backup vault</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_put_backup_vault_access_policy/"> put_backup_vault_access_policy </a></td>
<td style="text-align: left;">Sets a resource-based policy that is used
to manage access permissions on the target backup vault</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_put_backup_vault_lock_configuration/"> put_backup_vault_lock_configuration </a></td>
<td style="text-align: left;">Applies Backup Vault Lock to a backup
vault, preventing attempts to delete any recovery point stored in or
created in a backup vault</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_put_backup_vault_notifications/"> put_backup_vault_notifications </a></td>
<td style="text-align: left;">Turns on notifications on a backup vault
for the specified topic and events</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_start_backup_job/"> start_backup_job </a></td>
<td style="text-align: left;">Starts an on-demand backup job for the
specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_start_copy_job/"> start_copy_job </a></td>
<td style="text-align: left;">Starts a job to create a one-time copy of
the specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_start_report_job/"> start_report_job </a></td>
<td style="text-align: left;">Starts an on-demand report job for the
specified report plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_start_restore_job/"> start_restore_job </a></td>
<td style="text-align: left;">Recovers the saved resource identified by
an Amazon Resource Name (ARN)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_stop_backup_job/"> stop_backup_job </a></td>
<td style="text-align: left;">Attempts to cancel a job to create a
one-time backup of a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns a set of key-value pairs to a
recovery point, backup plan, or backup vault identified by an Amazon
Resource Name (ARN)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a set of key-value pairs from a
recovery point, backup plan, or backup vault identified by an Amazon
Resource Name (ARN)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_update_backup_plan/"> update_backup_plan </a></td>
<td style="text-align: left;">Updates an existing backup plan identified
by its backupPlanId with the input document in JSON format</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_update_framework/"> update_framework </a></td>
<td style="text-align: left;">Updates an existing framework identified
by its FrameworkName with the input document in JSON format</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_update_global_settings/"> update_global_settings </a></td>
<td style="text-align: left;">Updates whether the Amazon Web Services
account is opted in to cross-account backup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_update_recovery_point_lifecycle/"> update_recovery_point_lifecycle </a></td>
<td style="text-align: left;">Sets the transition lifecycle of a
recovery point</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../backup_update_region_settings/"> update_region_settings </a></td>
<td style="text-align: left;">Updates the current service opt-in
settings for the Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../backup_update_report_plan/"> update_report_plan </a></td>
<td style="text-align: left;">Updates an existing report plan identified
by its ReportPlanName with the input document in JSON format</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- backup()
    svc$cancel_legal_hold(
      Foo = 123
    )

    ## End(Not run)
