<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS License Manager

### Description

License Manager makes it easier to manage licenses from software vendors
across multiple Amazon Web Services accounts and on-premises servers.

### Usage

    licensemanager(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="licensemanager_:_config">config</code></td>
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

    svc <- licensemanager(
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
<td style="text-align: left;"><a href="../licensemanager_accept_grant/"> accept_grant </a></td>
<td style="text-align: left;">Accepts the specified grant</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_check_in_license/"> check_in_license </a></td>
<td style="text-align: left;">Checks in the specified license</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_checkout_borrow_license/"> checkout_borrow_license </a></td>
<td style="text-align: left;">Checks out the specified license for
offline use</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_checkout_license/"> checkout_license </a></td>
<td style="text-align: left;">Checks out the specified license</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_create_grant/"> create_grant </a></td>
<td style="text-align: left;">Creates a grant for the specified
license</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_create_grant_version/"> create_grant_version </a></td>
<td style="text-align: left;">Creates a new version of the specified
grant</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_create_license/"> create_license </a></td>
<td style="text-align: left;">Creates a license</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_create_license_configuration/"> create_license_configuration </a></td>
<td style="text-align: left;">Creates a license configuration</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../licensemanager_create_license_conversion_task_for_resource/"> create_license_conversion_task_for_resource </a></td>
<td style="text-align: left;">Creates a new license conversion task</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../licensemanager_create_license_manager_report_generator/"> create_license_manager_report_generator </a></td>
<td style="text-align: left;">Creates a report generator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_create_license_version/"> create_license_version </a></td>
<td style="text-align: left;">Creates a new version of the specified
license</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_create_token/"> create_token </a></td>
<td style="text-align: left;">Creates a long-lived token</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_delete_grant/"> delete_grant </a></td>
<td style="text-align: left;">Deletes the specified grant</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_delete_license/"> delete_license </a></td>
<td style="text-align: left;">Deletes the specified license</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_delete_license_configuration/"> delete_license_configuration </a></td>
<td style="text-align: left;">Deletes the specified license
configuration</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../licensemanager_delete_license_manager_report_generator/"> delete_license_manager_report_generator </a></td>
<td style="text-align: left;">Deletes the specified report
generator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_delete_token/"> delete_token </a></td>
<td style="text-align: left;">Deletes the specified token</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_extend_license_consumption/"> extend_license_consumption </a></td>
<td style="text-align: left;">Extends the expiration date for license
consumption</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_get_access_token/"> get_access_token </a></td>
<td style="text-align: left;">Gets a temporary access token to use with
AssumeRoleWithWebIdentity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_get_grant/"> get_grant </a></td>
<td style="text-align: left;">Gets detailed information about the
specified grant</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_get_license/"> get_license </a></td>
<td style="text-align: left;">Gets detailed information about the
specified license</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_get_license_configuration/"> get_license_configuration </a></td>
<td style="text-align: left;">Gets detailed information about the
specified license configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_get_license_conversion_task/"> get_license_conversion_task </a></td>
<td style="text-align: left;">Gets information about the specified
license type conversion task</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_get_license_manager_report_generator/"> get_license_manager_report_generator </a></td>
<td style="text-align: left;">Gets information about the specified
report generator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_get_license_usage/"> get_license_usage </a></td>
<td style="text-align: left;">Gets detailed information about the usage
of the specified license</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_get_service_settings/"> get_service_settings </a></td>
<td style="text-align: left;">Gets the License Manager settings for the
current Region</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../licensemanager_list_associations_for_license_configuration/"> list_associations_for_license_configuration </a></td>
<td style="text-align: left;">Lists the resource associations for the
specified license configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_list_distributed_grants/"> list_distributed_grants </a></td>
<td style="text-align: left;">Lists the grants distributed for the
specified license</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../licensemanager_list_failures_for_license_configuration_operations/"> list_failures_for_license_configuration_operations </a></td>
<td style="text-align: left;">Lists the license configuration operations
that failed</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_list_license_configurations/"> list_license_configurations </a></td>
<td style="text-align: left;">Lists the license configurations for your
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_list_license_conversion_tasks/"> list_license_conversion_tasks </a></td>
<td style="text-align: left;">Lists the license type conversion tasks
for your account</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../licensemanager_list_license_manager_report_generators/"> list_license_manager_report_generators </a></td>
<td style="text-align: left;">Lists the report generators for your
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_list_licenses/"> list_licenses </a></td>
<td style="text-align: left;">Lists the licenses for your account</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../licensemanager_list_license_specifications_for_resource/"> list_license_specifications_for_resource </a></td>
<td style="text-align: left;">Describes the license configurations for
the specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_list_license_versions/"> list_license_versions </a></td>
<td style="text-align: left;">Lists all versions of the specified
license</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_list_received_grants/"> list_received_grants </a></td>
<td style="text-align: left;">Lists grants that are received</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_list_received_grants_for_organization/"> list_received_grants_for_organization </a></td>
<td style="text-align: left;">Lists the grants received for all accounts
in the organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_list_received_licenses/"> list_received_licenses </a></td>
<td style="text-align: left;">Lists received licenses</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../licensemanager_list_received_licenses_for_organization/"> list_received_licenses_for_organization </a></td>
<td style="text-align: left;">Lists the licenses received for all
accounts in the organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_list_resource_inventory/"> list_resource_inventory </a></td>
<td style="text-align: left;">Lists resources managed using Systems
Manager inventory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags for the specified license
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_list_tokens/"> list_tokens </a></td>
<td style="text-align: left;">Lists your tokens</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_list_usage_for_license_configuration/"> list_usage_for_license_configuration </a></td>
<td style="text-align: left;">Lists all license usage records for a
license configuration, displaying license consumption details by
resource at a selected point in time</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_reject_grant/"> reject_grant </a></td>
<td style="text-align: left;">Rejects the specified grant</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds the specified tags to the specified
license configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the specified tags from the
specified license configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanager_update_license_configuration/"> update_license_configuration </a></td>
<td style="text-align: left;">Modifies the attributes of an existing
license configuration</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../licensemanager_update_license_manager_report_generator/"> update_license_manager_report_generator </a></td>
<td style="text-align: left;">Updates a report generator</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../licensemanager_update_license_specifications_for_resource/"> update_license_specifications_for_resource </a></td>
<td style="text-align: left;">Adds or removes the specified license
configurations for the specified Amazon Web Services resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanager_update_service_settings/"> update_service_settings </a></td>
<td style="text-align: left;">Updates License Manager settings for the
current Region</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- licensemanager()
    svc$accept_grant(
      Foo = 123
    )

    ## End(Not run)
