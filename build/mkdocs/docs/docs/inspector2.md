<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Inspector2

### Description

Amazon Inspector is a vulnerability discovery service that automates
continuous scanning for security vulnerabilities within your Amazon EC2
and Amazon ECR environments.

### Usage

    inspector2(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="inspector2_:_config">config</code></td>
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

    svc <- inspector2(
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
<td style="text-align: left;"><a href="../inspector2_associate_member/"> associate_member </a></td>
<td style="text-align: left;">Associates an Amazon Web Services account
with an Amazon Inspector delegated administrator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_batch_get_account_status/"> batch_get_account_status </a></td>
<td style="text-align: left;">Retrieves the Amazon Inspector status of
multiple Amazon Web Services accounts within your environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_batch_get_free_trial_info/"> batch_get_free_trial_info </a></td>
<td style="text-align: left;">Gets free trial status for multiple Amazon
Web Services accounts</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../inspector2_batch_get_member_ec_2_deep_inspection_status/"> batch_get_member_ec_2_deep_inspection_status </a></td>
<td style="text-align: left;">Retrieves Amazon Inspector deep inspection
activation status of multiple member accounts within your
organization</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../inspector2_batch_update_member_ec_2_deep_inspection_status/"> batch_update_member_ec_2_deep_inspection_status </a></td>
<td style="text-align: left;">Activates or deactivates Amazon Inspector
deep inspection for the provided member accounts in your
organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_cancel_findings_report/"> cancel_findings_report </a></td>
<td style="text-align: left;">Cancels the given findings report</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_create_filter/"> create_filter </a></td>
<td style="text-align: left;">Creates a filter resource using specified
filter criteria</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_create_findings_report/"> create_findings_report </a></td>
<td style="text-align: left;">Creates a finding report</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_delete_filter/"> delete_filter </a></td>
<td style="text-align: left;">Deletes a filter resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_describe_organization_configuration/"> describe_organization_configuration </a></td>
<td style="text-align: left;">Describe Amazon Inspector configuration
settings for an Amazon Web Services organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_disable/"> disable </a></td>
<td style="text-align: left;">Disables Amazon Inspector scans for one or
more Amazon Web Services accounts</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_disable_delegated_admin_account/"> disable_delegated_admin_account </a></td>
<td style="text-align: left;">Disables the Amazon Inspector delegated
administrator for your organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_disassociate_member/"> disassociate_member </a></td>
<td style="text-align: left;">Disassociates a member account from an
Amazon Inspector delegated administrator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_enable/"> enable </a></td>
<td style="text-align: left;">Enables Amazon Inspector scans for one or
more Amazon Web Services accounts</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_enable_delegated_admin_account/"> enable_delegated_admin_account </a></td>
<td style="text-align: left;">Enables the Amazon Inspector delegated
administrator for your Organizations organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_get_configuration/"> get_configuration </a></td>
<td style="text-align: left;">Retrieves setting configurations for
Inspector scans</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_get_delegated_admin_account/"> get_delegated_admin_account </a></td>
<td style="text-align: left;">Retrieves information about the Amazon
Inspector delegated administrator for your organization</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../inspector2_get_ec_2_deep_inspection_configuration/"> get_ec_2_deep_inspection_configuration </a></td>
<td style="text-align: left;">Retrieves the activation status of Amazon
Inspector deep inspection and custom paths associated with your
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_get_findings_report_status/"> get_findings_report_status </a></td>
<td style="text-align: left;">Gets the status of a findings report</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_get_member/"> get_member </a></td>
<td style="text-align: left;">Gets member information for your
organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_list_account_permissions/"> list_account_permissions </a></td>
<td style="text-align: left;">Lists the permissions an account has to
configure Amazon Inspector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_list_coverage/"> list_coverage </a></td>
<td style="text-align: left;">Lists coverage details for you
environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_list_coverage_statistics/"> list_coverage_statistics </a></td>
<td style="text-align: left;">Lists Amazon Inspector coverage statistics
for your environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_list_delegated_admin_accounts/"> list_delegated_admin_accounts </a></td>
<td style="text-align: left;">Lists information about the Amazon
Inspector delegated administrator of your organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_list_filters/"> list_filters </a></td>
<td style="text-align: left;">Lists the filters associated with your
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_list_finding_aggregations/"> list_finding_aggregations </a></td>
<td style="text-align: left;">Lists aggregated finding data for your
environment based on specific criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_list_findings/"> list_findings </a></td>
<td style="text-align: left;">Lists findings for your environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_list_members/"> list_members </a></td>
<td style="text-align: left;">List members associated with the Amazon
Inspector delegated administrator for your organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all tags attached to a given
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_list_usage_totals/"> list_usage_totals </a></td>
<td style="text-align: left;">Lists the Amazon Inspector usage totals
over the last 30 days</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_search_vulnerabilities/"> search_vulnerabilities </a></td>
<td style="text-align: left;">Lists Amazon Inspector coverage details
for a specific vulnerability</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds tags to a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_update_configuration/"> update_configuration </a></td>
<td style="text-align: left;">Updates setting configurations for your
Amazon Inspector account</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../inspector2_update_ec_2_deep_inspection_configuration/"> update_ec_2_deep_inspection_configuration </a></td>
<td style="text-align: left;">Activates, deactivates Amazon Inspector
deep inspection, or updates custom paths for your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../inspector2_update_filter/"> update_filter </a></td>
<td style="text-align: left;">Specifies the action that is to be applied
to the findings that match the filter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../inspector2_update_organization_configuration/"> update_organization_configuration </a></td>
<td style="text-align: left;">Updates the configurations for your Amazon
Inspector organization</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../inspector2_update_org_ec_2_deep_inspection_configuration/"> update_org_ec_2_deep_inspection_configuration </a></td>
<td style="text-align: left;">Updates the Amazon Inspector deep
inspection custom paths for your organization</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- inspector2()
    svc$associate_member(
      Foo = 123
    )

    ## End(Not run)
