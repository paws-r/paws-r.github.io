<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon QuickSight

### Description

Amazon QuickSight API Reference

Amazon QuickSight is a fully managed, serverless business intelligence
service for the Amazon Web Services Cloud that makes it easy to extend
data and insights to every user in your organization. This API reference
contains documentation for a programming interface that you can use to
manage Amazon QuickSight.

### Usage

    quicksight(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="quicksight_:_config">config</code></td>
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

    svc <- quicksight(
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
<td style="text-align: left;"><a href="../quicksight_cancel_ingestion/"> cancel_ingestion </a></td>
<td style="text-align: left;">Cancels an ongoing ingestion of data into
SPICE</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_create_account_customization/"> create_account_customization </a></td>
<td style="text-align: left;">Creates Amazon QuickSight customizations
for the current Amazon Web Services Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_create_account_subscription/"> create_account_subscription </a></td>
<td style="text-align: left;">Creates an Amazon QuickSight account, or
subscribes to Amazon QuickSight Q</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_create_analysis/"> create_analysis </a></td>
<td style="text-align: left;">Creates an analysis in Amazon
QuickSight</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_create_dashboard/"> create_dashboard </a></td>
<td style="text-align: left;">Creates a dashboard from either a template
or directly with a DashboardDefinition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_create_data_set/"> create_data_set </a></td>
<td style="text-align: left;">Creates a dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_create_data_source/"> create_data_source </a></td>
<td style="text-align: left;">Creates a data source</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_create_folder/"> create_folder </a></td>
<td style="text-align: left;">Creates an empty shared folder</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_create_folder_membership/"> create_folder_membership </a></td>
<td style="text-align: left;">Adds an asset, such as a dashboard,
analysis, or dataset into a folder</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_create_group/"> create_group </a></td>
<td style="text-align: left;">Use the CreateGroup operation to create a
group in Amazon QuickSight</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_create_group_membership/"> create_group_membership </a></td>
<td style="text-align: left;">Adds an Amazon QuickSight user to an
Amazon QuickSight group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_create_iam_policy_assignment/"> create_iam_policy_assignment </a></td>
<td style="text-align: left;">Creates an assignment with one specified
IAM policy, identified by its Amazon Resource Name (ARN)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_create_ingestion/"> create_ingestion </a></td>
<td style="text-align: left;">Creates and starts a new SPICE ingestion
for a dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_create_namespace/"> create_namespace </a></td>
<td style="text-align: left;">(Enterprise edition only) Creates a new
namespace for you to use with Amazon QuickSight</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_create_refresh_schedule/"> create_refresh_schedule </a></td>
<td style="text-align: left;">Creates a refresh schedule for a
dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_create_template/"> create_template </a></td>
<td style="text-align: left;">Creates a template either from a
TemplateDefinition or from an existing Amazon QuickSight analysis or
template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_create_template_alias/"> create_template_alias </a></td>
<td style="text-align: left;">Creates a template alias for a
template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_create_theme/"> create_theme </a></td>
<td style="text-align: left;">Creates a theme</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_create_theme_alias/"> create_theme_alias </a></td>
<td style="text-align: left;">Creates a theme alias for a theme</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_create_topic/"> create_topic </a></td>
<td style="text-align: left;">Creates a new Q topic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_create_topic_refresh_schedule/"> create_topic_refresh_schedule </a></td>
<td style="text-align: left;">Creates a topic refresh schedule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_create_vpc_connection/"> create_vpc_connection </a></td>
<td style="text-align: left;">Creates a new VPC connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_delete_account_customization/"> delete_account_customization </a></td>
<td style="text-align: left;">Deletes all Amazon QuickSight
customizations in this Amazon Web Services Region for the specified
Amazon Web Services account and Amazon QuickSight namespace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_delete_account_subscription/"> delete_account_subscription </a></td>
<td style="text-align: left;">Use the DeleteAccountSubscription
operation to delete an Amazon QuickSight account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_delete_analysis/"> delete_analysis </a></td>
<td style="text-align: left;">Deletes an analysis from Amazon
QuickSight</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_delete_dashboard/"> delete_dashboard </a></td>
<td style="text-align: left;">Deletes a dashboard</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_delete_data_set/"> delete_data_set </a></td>
<td style="text-align: left;">Deletes a dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_delete_data_set_refresh_properties/"> delete_data_set_refresh_properties </a></td>
<td style="text-align: left;">Deletes the dataset refresh properties of
the dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_delete_data_source/"> delete_data_source </a></td>
<td style="text-align: left;">Deletes the data source permanently</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_delete_folder/"> delete_folder </a></td>
<td style="text-align: left;">Deletes an empty folder</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_delete_folder_membership/"> delete_folder_membership </a></td>
<td style="text-align: left;">Removes an asset, such as a dashboard,
analysis, or dataset, from a folder</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_delete_group/"> delete_group </a></td>
<td style="text-align: left;">Removes a user group from Amazon
QuickSight</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_delete_group_membership/"> delete_group_membership </a></td>
<td style="text-align: left;">Removes a user from a group so that the
user is no longer a member of the group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_delete_iam_policy_assignment/"> delete_iam_policy_assignment </a></td>
<td style="text-align: left;">Deletes an existing IAM policy
assignment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_delete_namespace/"> delete_namespace </a></td>
<td style="text-align: left;">Deletes a namespace and the users and
groups that are associated with the namespace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_delete_refresh_schedule/"> delete_refresh_schedule </a></td>
<td style="text-align: left;">Deletes a refresh schedule from a
dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_delete_template/"> delete_template </a></td>
<td style="text-align: left;">Deletes a template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_delete_template_alias/"> delete_template_alias </a></td>
<td style="text-align: left;">Deletes the item that the specified
template alias points to</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_delete_theme/"> delete_theme </a></td>
<td style="text-align: left;">Deletes a theme</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_delete_theme_alias/"> delete_theme_alias </a></td>
<td style="text-align: left;">Deletes the version of the theme that the
specified theme alias points to</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_delete_topic/"> delete_topic </a></td>
<td style="text-align: left;">Deletes a topic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_delete_topic_refresh_schedule/"> delete_topic_refresh_schedule </a></td>
<td style="text-align: left;">Deletes a topic refresh schedule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_delete_user/"> delete_user </a></td>
<td style="text-align: left;">Deletes the Amazon QuickSight user that is
associated with the identity of the IAM user or role that's making the
call</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_delete_user_by_principal_id/"> delete_user_by_principal_id </a></td>
<td style="text-align: left;">Deletes a user identified by its principal
ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_delete_vpc_connection/"> delete_vpc_connection </a></td>
<td style="text-align: left;">Deletes a VPC connection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_account_customization/"> describe_account_customization </a></td>
<td style="text-align: left;">Describes the customizations associated
with the provided Amazon Web Services account and Amazon Amazon
QuickSight namespace in an Amazon Web Services Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_account_settings/"> describe_account_settings </a></td>
<td style="text-align: left;">Describes the settings that were used when
your Amazon QuickSight subscription was first created in this Amazon Web
Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_account_subscription/"> describe_account_subscription </a></td>
<td style="text-align: left;">Use the DescribeAccountSubscription
operation to receive a description of an Amazon QuickSight account's
subscription</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_analysis/"> describe_analysis </a></td>
<td style="text-align: left;">Provides a summary of the metadata for an
analysis</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_analysis_definition/"> describe_analysis_definition </a></td>
<td style="text-align: left;">Provides a detailed description of the
definition of an analysis</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_analysis_permissions/"> describe_analysis_permissions </a></td>
<td style="text-align: left;">Provides the read and write permissions
for an analysis</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_asset_bundle_export_job/"> describe_asset_bundle_export_job </a></td>
<td style="text-align: left;">Describes an existing export job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_asset_bundle_import_job/"> describe_asset_bundle_import_job </a></td>
<td style="text-align: left;">Describes an existing import job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_dashboard/"> describe_dashboard </a></td>
<td style="text-align: left;">Provides a summary for a dashboard</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_dashboard_definition/"> describe_dashboard_definition </a></td>
<td style="text-align: left;">Provides a detailed description of the
definition of a dashboard</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_dashboard_permissions/"> describe_dashboard_permissions </a></td>
<td style="text-align: left;">Describes read and write permissions for a
dashboard</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_data_set/"> describe_data_set </a></td>
<td style="text-align: left;">Describes a dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_data_set_permissions/"> describe_data_set_permissions </a></td>
<td style="text-align: left;">Describes the permissions on a
dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_data_set_refresh_properties/"> describe_data_set_refresh_properties </a></td>
<td style="text-align: left;">Describes the refresh properties of a
dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_data_source/"> describe_data_source </a></td>
<td style="text-align: left;">Describes a data source</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_data_source_permissions/"> describe_data_source_permissions </a></td>
<td style="text-align: left;">Describes the resource permissions for a
data source</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_folder/"> describe_folder </a></td>
<td style="text-align: left;">Describes a folder</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_folder_permissions/"> describe_folder_permissions </a></td>
<td style="text-align: left;">Describes permissions for a folder</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_folder_resolved_permissions/"> describe_folder_resolved_permissions </a></td>
<td style="text-align: left;">Describes the folder resolved
permissions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_group/"> describe_group </a></td>
<td style="text-align: left;">Returns an Amazon QuickSight group's
description and Amazon Resource Name (ARN)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_group_membership/"> describe_group_membership </a></td>
<td style="text-align: left;">Use the DescribeGroupMembership operation
to determine if a user is a member of the specified group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_iam_policy_assignment/"> describe_iam_policy_assignment </a></td>
<td style="text-align: left;">Describes an existing IAM policy
assignment, as specified by the assignment name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_ingestion/"> describe_ingestion </a></td>
<td style="text-align: left;">Describes a SPICE ingestion</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_ip_restriction/"> describe_ip_restriction </a></td>
<td style="text-align: left;">Provides a summary and status of IP
rules</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_namespace/"> describe_namespace </a></td>
<td style="text-align: left;">Describes the current namespace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_refresh_schedule/"> describe_refresh_schedule </a></td>
<td style="text-align: left;">Provides a summary of a refresh
schedule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_template/"> describe_template </a></td>
<td style="text-align: left;">Describes a template's metadata</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_template_alias/"> describe_template_alias </a></td>
<td style="text-align: left;">Describes the template alias for a
template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_template_definition/"> describe_template_definition </a></td>
<td style="text-align: left;">Provides a detailed description of the
definition of a template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_template_permissions/"> describe_template_permissions </a></td>
<td style="text-align: left;">Describes read and write permissions on a
template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_theme/"> describe_theme </a></td>
<td style="text-align: left;">Describes a theme</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_theme_alias/"> describe_theme_alias </a></td>
<td style="text-align: left;">Describes the alias for a theme</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_theme_permissions/"> describe_theme_permissions </a></td>
<td style="text-align: left;">Describes the read and write permissions
for a theme</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_topic/"> describe_topic </a></td>
<td style="text-align: left;">Describes a topic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_topic_permissions/"> describe_topic_permissions </a></td>
<td style="text-align: left;">Describes the permissions of a topic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_topic_refresh/"> describe_topic_refresh </a></td>
<td style="text-align: left;">Describes the status of a topic
refresh</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_topic_refresh_schedule/"> describe_topic_refresh_schedule </a></td>
<td style="text-align: left;">Deletes a topic refresh schedule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_describe_user/"> describe_user </a></td>
<td style="text-align: left;">Returns information about a user, given
the user name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_describe_vpc_connection/"> describe_vpc_connection </a></td>
<td style="text-align: left;">Describes a VPC connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_generate_embed_url_for_anonymous_user/"> generate_embed_url_for_anonymous_user </a></td>
<td style="text-align: left;">Generates an embed URL that you can use to
embed an Amazon QuickSight dashboard or visual in your website, without
having to register any reader users</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../quicksight_generate_embed_url_for_registered_user/"> generate_embed_url_for_registered_user </a></td>
<td style="text-align: left;">Generates an embed URL that you can use to
embed an Amazon QuickSight experience in your website</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_get_dashboard_embed_url/"> get_dashboard_embed_url </a></td>
<td style="text-align: left;">Generates a temporary session URL and
authorization code(bearer token) that you can use to embed an Amazon
QuickSight read-only dashboard in your website or application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_get_session_embed_url/"> get_session_embed_url </a></td>
<td style="text-align: left;">Generates a session URL and authorization
code that you can use to embed the Amazon Amazon QuickSight console in
your web server code</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_list_analyses/"> list_analyses </a></td>
<td style="text-align: left;">Lists Amazon QuickSight analyses that
exist in the specified Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_list_asset_bundle_export_jobs/"> list_asset_bundle_export_jobs </a></td>
<td style="text-align: left;">Lists all asset bundle export jobs that
have been taken place in the last 14 days</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_list_asset_bundle_import_jobs/"> list_asset_bundle_import_jobs </a></td>
<td style="text-align: left;">Lists all asset bundle import jobs that
have taken place in the last 14 days</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_list_dashboards/"> list_dashboards </a></td>
<td style="text-align: left;">Lists dashboards in an Amazon Web Services
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_list_dashboard_versions/"> list_dashboard_versions </a></td>
<td style="text-align: left;">Lists all the versions of the dashboards
in the Amazon QuickSight subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_list_data_sets/"> list_data_sets </a></td>
<td style="text-align: left;">Lists all of the datasets belonging to the
current Amazon Web Services account in an Amazon Web Services
Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_list_data_sources/"> list_data_sources </a></td>
<td style="text-align: left;">Lists data sources in current Amazon Web
Services Region that belong to this Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_list_folder_members/"> list_folder_members </a></td>
<td style="text-align: left;">List all assets (DASHBOARD, ANALYSIS, and
DATASET) in a folder</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_list_folders/"> list_folders </a></td>
<td style="text-align: left;">Lists all folders in an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_list_group_memberships/"> list_group_memberships </a></td>
<td style="text-align: left;">Lists member users in a group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_list_groups/"> list_groups </a></td>
<td style="text-align: left;">Lists all user groups in Amazon
QuickSight</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_list_iam_policy_assignments/"> list_iam_policy_assignments </a></td>
<td style="text-align: left;">Lists the IAM policy assignments in the
current Amazon QuickSight account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_list_iam_policy_assignments_for_user/"> list_iam_policy_assignments_for_user </a></td>
<td style="text-align: left;">Lists all of the IAM policy assignments,
including the Amazon Resource Names (ARNs), for the IAM policies
assigned to the specified user and group, or groups that the user
belongs to</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_list_ingestions/"> list_ingestions </a></td>
<td style="text-align: left;">Lists the history of SPICE ingestions for
a dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_list_namespaces/"> list_namespaces </a></td>
<td style="text-align: left;">Lists the namespaces for the specified
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_list_refresh_schedules/"> list_refresh_schedules </a></td>
<td style="text-align: left;">Lists the refresh schedules of a
dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags assigned to a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_list_template_aliases/"> list_template_aliases </a></td>
<td style="text-align: left;">Lists all the aliases of a template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_list_templates/"> list_templates </a></td>
<td style="text-align: left;">Lists all the templates in the current
Amazon QuickSight account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_list_template_versions/"> list_template_versions </a></td>
<td style="text-align: left;">Lists all the versions of the templates in
the current Amazon QuickSight account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_list_theme_aliases/"> list_theme_aliases </a></td>
<td style="text-align: left;">Lists all the aliases of a theme</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_list_themes/"> list_themes </a></td>
<td style="text-align: left;">Lists all the themes in the current Amazon
Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_list_theme_versions/"> list_theme_versions </a></td>
<td style="text-align: left;">Lists all the versions of the themes in
the current Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_list_topic_refresh_schedules/"> list_topic_refresh_schedules </a></td>
<td style="text-align: left;">Lists all of the refresh schedules for a
topic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_list_topics/"> list_topics </a></td>
<td style="text-align: left;">Lists all of the topics within an
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_list_user_groups/"> list_user_groups </a></td>
<td style="text-align: left;">Lists the Amazon QuickSight groups that an
Amazon QuickSight user is a member of</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_list_users/"> list_users </a></td>
<td style="text-align: left;">Returns a list of all of the Amazon
QuickSight users belonging to this account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_list_vpc_connections/"> list_vpc_connections </a></td>
<td style="text-align: left;">Lists all of the VPC connections in the
current set Amazon Web Services Region of an Amazon Web Services
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_put_data_set_refresh_properties/"> put_data_set_refresh_properties </a></td>
<td style="text-align: left;">Creates or updates the dataset refresh
properties for the dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_register_user/"> register_user </a></td>
<td style="text-align: left;">Creates an Amazon QuickSight user whose
identity is associated with the Identity and Access Management (IAM)
identity or role specified in the request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_restore_analysis/"> restore_analysis </a></td>
<td style="text-align: left;">Restores an analysis</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_search_analyses/"> search_analyses </a></td>
<td style="text-align: left;">Searches for analyses that belong to the
user specified in the filter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_search_dashboards/"> search_dashboards </a></td>
<td style="text-align: left;">Searches for dashboards that belong to a
user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_search_data_sets/"> search_data_sets </a></td>
<td style="text-align: left;">Use the SearchDataSets operation to search
for datasets that belong to an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_search_data_sources/"> search_data_sources </a></td>
<td style="text-align: left;">Use the SearchDataSources operation to
search for data sources that belong to an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_search_folders/"> search_folders </a></td>
<td style="text-align: left;">Searches the subfolders in a folder</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_search_groups/"> search_groups </a></td>
<td style="text-align: left;">Use the SearchGroups operation to search
groups in a specified Amazon QuickSight namespace using the supplied
filters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_start_asset_bundle_export_job/"> start_asset_bundle_export_job </a></td>
<td style="text-align: left;">Starts an Asset Bundle export job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_start_asset_bundle_import_job/"> start_asset_bundle_import_job </a></td>
<td style="text-align: left;">Starts an Asset Bundle import job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns one or more tags (key-value pairs)
to the specified Amazon QuickSight resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a tag or tags from a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_account_customization/"> update_account_customization </a></td>
<td style="text-align: left;">Updates Amazon QuickSight customizations
for the current Amazon Web Services Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_update_account_settings/"> update_account_settings </a></td>
<td style="text-align: left;">Updates the Amazon QuickSight settings in
your Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_analysis/"> update_analysis </a></td>
<td style="text-align: left;">Updates an analysis in Amazon
QuickSight</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_update_analysis_permissions/"> update_analysis_permissions </a></td>
<td style="text-align: left;">Updates the read and write permissions for
an analysis</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_dashboard/"> update_dashboard </a></td>
<td style="text-align: left;">Updates a dashboard in an Amazon Web
Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_update_dashboard_permissions/"> update_dashboard_permissions </a></td>
<td style="text-align: left;">Updates read and write permissions on a
dashboard</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_dashboard_published_version/"> update_dashboard_published_version </a></td>
<td style="text-align: left;">Updates the published version of a
dashboard</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_update_data_set/"> update_data_set </a></td>
<td style="text-align: left;">Updates a dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_data_set_permissions/"> update_data_set_permissions </a></td>
<td style="text-align: left;">Updates the permissions on a dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_update_data_source/"> update_data_source </a></td>
<td style="text-align: left;">Updates a data source</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_data_source_permissions/"> update_data_source_permissions </a></td>
<td style="text-align: left;">Updates the permissions to a data
source</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_update_folder/"> update_folder </a></td>
<td style="text-align: left;">Updates the name of a folder</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_folder_permissions/"> update_folder_permissions </a></td>
<td style="text-align: left;">Updates permissions of a folder</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_update_group/"> update_group </a></td>
<td style="text-align: left;">Changes a group description</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_iam_policy_assignment/"> update_iam_policy_assignment </a></td>
<td style="text-align: left;">Updates an existing IAM policy
assignment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_update_ip_restriction/"> update_ip_restriction </a></td>
<td style="text-align: left;">Updates the content and status of IP
rules</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_public_sharing_settings/"> update_public_sharing_settings </a></td>
<td style="text-align: left;">Use the UpdatePublicSharingSettings
operation to turn on or turn off the public sharing settings of an
Amazon QuickSight dashboard</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_update_refresh_schedule/"> update_refresh_schedule </a></td>
<td style="text-align: left;">Updates a refresh schedule for a
dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_template/"> update_template </a></td>
<td style="text-align: left;">Updates a template from an existing Amazon
QuickSight analysis or another template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_update_template_alias/"> update_template_alias </a></td>
<td style="text-align: left;">Updates the template alias of a
template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_template_permissions/"> update_template_permissions </a></td>
<td style="text-align: left;">Updates the resource permissions for a
template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_update_theme/"> update_theme </a></td>
<td style="text-align: left;">Updates a theme</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_theme_alias/"> update_theme_alias </a></td>
<td style="text-align: left;">Updates an alias of a theme</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_update_theme_permissions/"> update_theme_permissions </a></td>
<td style="text-align: left;">Updates the resource permissions for a
theme</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_topic/"> update_topic </a></td>
<td style="text-align: left;">Updates a topic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_update_topic_permissions/"> update_topic_permissions </a></td>
<td style="text-align: left;">Updates the permissions of a topic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_topic_refresh_schedule/"> update_topic_refresh_schedule </a></td>
<td style="text-align: left;">Updates a topic refresh schedule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../quicksight_update_user/"> update_user </a></td>
<td style="text-align: left;">Updates an Amazon QuickSight user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../quicksight_update_vpc_connection/"> update_vpc_connection </a></td>
<td style="text-align: left;">Updates a VPC connection</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- quicksight()
    svc$cancel_ingestion(
      Foo = 123
    )

    ## End(Not run)
