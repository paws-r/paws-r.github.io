<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Macie 2

### Description

Amazon Macie

### Usage

    macie2(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_:_config">config</code></td>
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

    svc <- macie2(
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
<td style="text-align: left;"><a href="../macie2_accept_invitation/"> accept_invitation </a></td>
<td style="text-align: left;">Accepts an Amazon Macie membership
invitation that was received from a specific account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_batch_get_custom_data_identifiers/"> batch_get_custom_data_identifiers </a></td>
<td style="text-align: left;">Retrieves information about one or more
custom data identifiers</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_create_allow_list/"> create_allow_list </a></td>
<td style="text-align: left;">Creates and defines the settings for an
allow list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_create_classification_job/"> create_classification_job </a></td>
<td style="text-align: left;">Creates and defines the settings for a
classification job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_create_custom_data_identifier/"> create_custom_data_identifier </a></td>
<td style="text-align: left;">Creates and defines the criteria and other
settings for a custom data identifier</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_create_findings_filter/"> create_findings_filter </a></td>
<td style="text-align: left;">Creates and defines the criteria and other
settings for a findings filter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_create_invitations/"> create_invitations </a></td>
<td style="text-align: left;">Sends an Amazon Macie membership
invitation to one or more accounts</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_create_member/"> create_member </a></td>
<td style="text-align: left;">Associates an account with an Amazon Macie
administrator account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_create_sample_findings/"> create_sample_findings </a></td>
<td style="text-align: left;">Creates sample findings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_decline_invitations/"> decline_invitations </a></td>
<td style="text-align: left;">Declines Amazon Macie membership
invitations that were received from specific accounts</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_delete_allow_list/"> delete_allow_list </a></td>
<td style="text-align: left;">Deletes an allow list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_delete_custom_data_identifier/"> delete_custom_data_identifier </a></td>
<td style="text-align: left;">Soft deletes a custom data identifier</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_delete_findings_filter/"> delete_findings_filter </a></td>
<td style="text-align: left;">Deletes a findings filter</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_delete_invitations/"> delete_invitations </a></td>
<td style="text-align: left;">Deletes Amazon Macie membership
invitations that were received from specific accounts</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_delete_member/"> delete_member </a></td>
<td style="text-align: left;">Deletes the association between an Amazon
Macie administrator account and an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_describe_buckets/"> describe_buckets </a></td>
<td style="text-align: left;">Retrieves (queries) statistical data and
other information about one or more S3 buckets that Amazon Macie
monitors and analyzes for an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_describe_classification_job/"> describe_classification_job </a></td>
<td style="text-align: left;">Retrieves the status and settings for a
classification job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_describe_organization_configuration/"> describe_organization_configuration </a></td>
<td style="text-align: left;">Retrieves the Amazon Macie configuration
settings for an organization in Organizations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_disable_macie/"> disable_macie </a></td>
<td style="text-align: left;">Disables Amazon Macie and deletes all
settings and resources for a Macie account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_disable_organization_admin_account/"> disable_organization_admin_account </a></td>
<td style="text-align: left;">Disables an account as the delegated
Amazon Macie administrator account for an organization in
Organizations</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../macie2_disassociate_from_administrator_account/"> disassociate_from_administrator_account </a></td>
<td style="text-align: left;">Disassociates a member account from its
Amazon Macie administrator account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_disassociate_from_master_account/"> disassociate_from_master_account </a></td>
<td style="text-align: left;">(Deprecated) Disassociates a member
account from its Amazon Macie administrator account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_disassociate_member/"> disassociate_member </a></td>
<td style="text-align: left;">Disassociates an Amazon Macie
administrator account from a member account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_enable_macie/"> enable_macie </a></td>
<td style="text-align: left;">Enables Amazon Macie and specifies the
configuration settings for a Macie account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_enable_organization_admin_account/"> enable_organization_admin_account </a></td>
<td style="text-align: left;">Designates an account as the delegated
Amazon Macie administrator account for an organization in
Organizations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_get_administrator_account/"> get_administrator_account </a></td>
<td style="text-align: left;">Retrieves information about the Amazon
Macie administrator account for an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_get_allow_list/"> get_allow_list </a></td>
<td style="text-align: left;">Retrieves the settings and status of an
allow list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_get_automated_discovery_configuration/"> get_automated_discovery_configuration </a></td>
<td style="text-align: left;">Retrieves the configuration settings and
status of automated sensitive data discovery for an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_get_bucket_statistics/"> get_bucket_statistics </a></td>
<td style="text-align: left;">Retrieves (queries) aggregated statistical
data about all the S3 buckets that Amazon Macie monitors and analyzes
for an account</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../macie2_get_classification_export_configuration/"> get_classification_export_configuration </a></td>
<td style="text-align: left;">Retrieves the configuration settings for
storing data classification results</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_get_classification_scope/"> get_classification_scope </a></td>
<td style="text-align: left;">Retrieves the classification scope
settings for an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_get_custom_data_identifier/"> get_custom_data_identifier </a></td>
<td style="text-align: left;">Retrieves the criteria and other settings
for a custom data identifier</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_get_findings/"> get_findings </a></td>
<td style="text-align: left;">Retrieves the details of one or more
findings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_get_findings_filter/"> get_findings_filter </a></td>
<td style="text-align: left;">Retrieves the criteria and other settings
for a findings filter</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../macie2_get_findings_publication_configuration/"> get_findings_publication_configuration </a></td>
<td style="text-align: left;">Retrieves the configuration settings for
publishing findings to Security Hub</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_get_finding_statistics/"> get_finding_statistics </a></td>
<td style="text-align: left;">Retrieves (queries) aggregated statistical
data about findings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_get_invitations_count/"> get_invitations_count </a></td>
<td style="text-align: left;">Retrieves the count of Amazon Macie
membership invitations that were received by an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_get_macie_session/"> get_macie_session </a></td>
<td style="text-align: left;">Retrieves the status and configuration
settings for an Amazon Macie account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_get_master_account/"> get_master_account </a></td>
<td style="text-align: left;">(Deprecated) Retrieves information about
the Amazon Macie administrator account for an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_get_member/"> get_member </a></td>
<td style="text-align: left;">Retrieves information about an account
that's associated with an Amazon Macie administrator account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_get_resource_profile/"> get_resource_profile </a></td>
<td style="text-align: left;">Retrieves (queries) sensitive data
discovery statistics and the sensitivity score for an S3 bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_get_reveal_configuration/"> get_reveal_configuration </a></td>
<td style="text-align: left;">Retrieves the status and configuration
settings for retrieving occurrences of sensitive data reported by
findings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_get_sensitive_data_occurrences/"> get_sensitive_data_occurrences </a></td>
<td style="text-align: left;">Retrieves occurrences of sensitive data
reported by a finding</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../macie2_get_sensitive_data_occurrences_availability/"> get_sensitive_data_occurrences_availability </a></td>
<td style="text-align: left;">Checks whether occurrences of sensitive
data can be retrieved for a finding</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_get_sensitivity_inspection_template/"> get_sensitivity_inspection_template </a></td>
<td style="text-align: left;">Retrieves the settings for the sensitivity
inspection template for an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_get_usage_statistics/"> get_usage_statistics </a></td>
<td style="text-align: left;">Retrieves (queries) quotas and aggregated
usage data for one or more accounts</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_get_usage_totals/"> get_usage_totals </a></td>
<td style="text-align: left;">Retrieves (queries) aggregated usage data
for an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_list_allow_lists/"> list_allow_lists </a></td>
<td style="text-align: left;">Retrieves a subset of information about
all the allow lists for an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_list_classification_jobs/"> list_classification_jobs </a></td>
<td style="text-align: left;">Retrieves a subset of information about
one or more classification jobs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_list_classification_scopes/"> list_classification_scopes </a></td>
<td style="text-align: left;">Retrieves a subset of information about
the classification scope for an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_list_custom_data_identifiers/"> list_custom_data_identifiers </a></td>
<td style="text-align: left;">Retrieves a subset of information about
all the custom data identifiers for an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_list_findings/"> list_findings </a></td>
<td style="text-align: left;">Retrieves a subset of information about
one or more findings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_list_findings_filters/"> list_findings_filters </a></td>
<td style="text-align: left;">Retrieves a subset of information about
all the findings filters for an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_list_invitations/"> list_invitations </a></td>
<td style="text-align: left;">Retrieves information about the Amazon
Macie membership invitations that were received by an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_list_managed_data_identifiers/"> list_managed_data_identifiers </a></td>
<td style="text-align: left;">Retrieves information about all the
managed data identifiers that Amazon Macie currently provides</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_list_members/"> list_members </a></td>
<td style="text-align: left;">Retrieves information about the accounts
that are associated with an Amazon Macie administrator account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_list_organization_admin_accounts/"> list_organization_admin_accounts </a></td>
<td style="text-align: left;">Retrieves information about the delegated
Amazon Macie administrator account for an organization in
Organizations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_list_resource_profile_artifacts/"> list_resource_profile_artifacts </a></td>
<td style="text-align: left;">Retrieves information about objects that
were selected from an S3 bucket for automated sensitive data
discovery</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_list_resource_profile_detections/"> list_resource_profile_detections </a></td>
<td style="text-align: left;">Retrieves information about the types and
amount of sensitive data that Amazon Macie found in an S3 bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_list_sensitivity_inspection_templates/"> list_sensitivity_inspection_templates </a></td>
<td style="text-align: left;">Retrieves a subset of information about
the sensitivity inspection template for an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Retrieves the tags (keys and values) that
are associated with an Amazon Macie resource</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../macie2_put_classification_export_configuration/"> put_classification_export_configuration </a></td>
<td style="text-align: left;">Creates or updates the configuration
settings for storing data classification results</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../macie2_put_findings_publication_configuration/"> put_findings_publication_configuration </a></td>
<td style="text-align: left;">Updates the configuration settings for
publishing findings to Security Hub</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_search_resources/"> search_resources </a></td>
<td style="text-align: left;">Retrieves (queries) statistical data and
other information about Amazon Web Services resources that Amazon Macie
monitors and analyzes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or updates one or more tags (keys and
values) that are associated with an Amazon Macie resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_test_custom_data_identifier/"> test_custom_data_identifier </a></td>
<td style="text-align: left;">Tests a custom data identifier</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags (keys and values)
from an Amazon Macie resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_update_allow_list/"> update_allow_list </a></td>
<td style="text-align: left;">Updates the settings for an allow
list</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../macie2_update_automated_discovery_configuration/"> update_automated_discovery_configuration </a></td>
<td style="text-align: left;">Enables or disables automated sensitive
data discovery for an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_update_classification_job/"> update_classification_job </a></td>
<td style="text-align: left;">Changes the status of a classification
job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_update_classification_scope/"> update_classification_scope </a></td>
<td style="text-align: left;">Updates the classification scope settings
for an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_update_findings_filter/"> update_findings_filter </a></td>
<td style="text-align: left;">Updates the criteria and other settings
for a findings filter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_update_macie_session/"> update_macie_session </a></td>
<td style="text-align: left;">Suspends or re-enables Amazon Macie, or
updates the configuration settings for a Macie account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_update_member_session/"> update_member_session </a></td>
<td style="text-align: left;">Enables an Amazon Macie administrator to
suspend or re-enable Macie for a member account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_update_organization_configuration/"> update_organization_configuration </a></td>
<td style="text-align: left;">Updates the Amazon Macie configuration
settings for an organization in Organizations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_update_resource_profile/"> update_resource_profile </a></td>
<td style="text-align: left;">Updates the sensitivity score for an S3
bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie2_update_resource_profile_detections/"> update_resource_profile_detections </a></td>
<td style="text-align: left;">Updates the sensitivity scoring settings
for an S3 bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie2_update_reveal_configuration/"> update_reveal_configuration </a></td>
<td style="text-align: left;">Updates the status and configuration
settings for retrieving occurrences of sensitive data reported by
findings</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../macie2_update_sensitivity_inspection_template/"> update_sensitivity_inspection_template </a></td>
<td style="text-align: left;">Updates the settings for the sensitivity
inspection template for an account</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- macie2()
    svc$accept_invitation(
      Foo = 123
    )

    ## End(Not run)
