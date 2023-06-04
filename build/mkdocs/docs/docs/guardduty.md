<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon GuardDuty

### Description

Amazon GuardDuty is a continuous security monitoring service that
analyzes and processes the following data sources: VPC flow logs, Amazon
Web Services CloudTrail management event logs, CloudTrail S3 data event
logs, EKS audit logs, DNS logs, and Amazon EBS volume data. It uses
threat intelligence feeds, such as lists of malicious IPs and domains,
and machine learning to identify unexpected, potentially unauthorized,
and malicious activity within your Amazon Web Services environment. This
can include issues like escalations of privileges, uses of exposed
credentials, or communication with malicious IPs, domains, or presence
of malware on your Amazon EC2 instances and container workloads. For
example, GuardDuty can detect compromised EC2 instances and container
workloads serving malware, or mining bitcoin.

GuardDuty also monitors Amazon Web Services account access behavior for
signs of compromise, such as unauthorized infrastructure deployments
like EC2 instances deployed in a Region that has never been used, or
unusual API calls like a password policy change to reduce password
strength.

GuardDuty informs you about the status of your Amazon Web Services
environment by producing security findings that you can view in the
GuardDuty console or through Amazon EventBridge. For more information,
see the
*<span href="https://docs.aws.amazon.com/guardduty/latest/ug/what-is-guardduty.html">Amazon
GuardDuty User Guide</span>* .

### Usage

    guardduty(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="guardduty_:_config">config</code></td>
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

    svc <- guardduty(
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
<td style="text-align: left;"><a href="../guardduty_accept_administrator_invitation/"> accept_administrator_invitation </a></td>
<td style="text-align: left;">Accepts the invitation to be a member
account and get monitored by a GuardDuty administrator account that sent
the invitation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_accept_invitation/"> accept_invitation </a></td>
<td style="text-align: left;">Accepts the invitation to be monitored by
a GuardDuty administrator account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_archive_findings/"> archive_findings </a></td>
<td style="text-align: left;">Archives GuardDuty findings that are
specified by the list of finding IDs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_create_detector/"> create_detector </a></td>
<td style="text-align: left;">Creates a single Amazon GuardDuty
detector</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_create_filter/"> create_filter </a></td>
<td style="text-align: left;">Creates a filter using the specified
finding criteria</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_create_ip_set/"> create_ip_set </a></td>
<td style="text-align: left;">Creates a new IPSet, which is called a
trusted IP list in the console user interface</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_create_members/"> create_members </a></td>
<td style="text-align: left;">Creates member accounts of the current
Amazon Web Services account by specifying a list of Amazon Web Services
account IDs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_create_publishing_destination/"> create_publishing_destination </a></td>
<td style="text-align: left;">Creates a publishing destination to export
findings to</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_create_sample_findings/"> create_sample_findings </a></td>
<td style="text-align: left;">Generates sample findings of types
specified by the list of finding types</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_create_threat_intel_set/"> create_threat_intel_set </a></td>
<td style="text-align: left;">Creates a new ThreatIntelSet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_decline_invitations/"> decline_invitations </a></td>
<td style="text-align: left;">Declines invitations sent to the current
member account by Amazon Web Services accounts specified by their
account IDs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_delete_detector/"> delete_detector </a></td>
<td style="text-align: left;">Deletes an Amazon GuardDuty detector that
is specified by the detector ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_delete_filter/"> delete_filter </a></td>
<td style="text-align: left;">Deletes the filter specified by the filter
name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_delete_invitations/"> delete_invitations </a></td>
<td style="text-align: left;">Deletes invitations sent to the current
member account by Amazon Web Services accounts specified by their
account IDs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_delete_ip_set/"> delete_ip_set </a></td>
<td style="text-align: left;">Deletes the IPSet specified by the
ipSetId</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_delete_members/"> delete_members </a></td>
<td style="text-align: left;">Deletes GuardDuty member accounts (to the
current GuardDuty administrator account) specified by the account
IDs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_delete_publishing_destination/"> delete_publishing_destination </a></td>
<td style="text-align: left;">Deletes the publishing definition with the
specified destinationId</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_delete_threat_intel_set/"> delete_threat_intel_set </a></td>
<td style="text-align: left;">Deletes the ThreatIntelSet specified by
the ThreatIntelSet ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_describe_malware_scans/"> describe_malware_scans </a></td>
<td style="text-align: left;">Returns a list of malware scans</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_describe_organization_configuration/"> describe_organization_configuration </a></td>
<td style="text-align: left;">Returns information about the account
selected as the delegated administrator for GuardDuty</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_describe_publishing_destination/"> describe_publishing_destination </a></td>
<td style="text-align: left;">Returns information about the publishing
destination specified by the provided destinationId</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_disable_organization_admin_account/"> disable_organization_admin_account </a></td>
<td style="text-align: left;">Disables an Amazon Web Services account
within the Organization as the GuardDuty delegated administrator</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../guardduty_disassociate_from_administrator_account/"> disassociate_from_administrator_account </a></td>
<td style="text-align: left;">Disassociates the current GuardDuty member
account from its administrator account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_disassociate_from_master_account/"> disassociate_from_master_account </a></td>
<td style="text-align: left;">Disassociates the current GuardDuty member
account from its administrator account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_disassociate_members/"> disassociate_members </a></td>
<td style="text-align: left;">Disassociates GuardDuty member accounts
(to the current administrator account) specified by the account IDs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_enable_organization_admin_account/"> enable_organization_admin_account </a></td>
<td style="text-align: left;">Enables an Amazon Web Services account
within the organization as the GuardDuty delegated administrator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_get_administrator_account/"> get_administrator_account </a></td>
<td style="text-align: left;">Provides the details for the GuardDuty
administrator account associated with the current GuardDuty member
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_get_coverage_statistics/"> get_coverage_statistics </a></td>
<td style="text-align: left;">Retrieves aggregated statistics for your
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_get_detector/"> get_detector </a></td>
<td style="text-align: left;">Retrieves an Amazon GuardDuty detector
specified by the detectorId</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_get_filter/"> get_filter </a></td>
<td style="text-align: left;">Returns the details of the filter
specified by the filter name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_get_findings/"> get_findings </a></td>
<td style="text-align: left;">Describes Amazon GuardDuty findings
specified by finding IDs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_get_findings_statistics/"> get_findings_statistics </a></td>
<td style="text-align: left;">Lists Amazon GuardDuty findings statistics
for the specified detector ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_get_invitations_count/"> get_invitations_count </a></td>
<td style="text-align: left;">Returns the count of all GuardDuty
membership invitations that were sent to the current member account
except the currently accepted invitation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_get_ip_set/"> get_ip_set </a></td>
<td style="text-align: left;">Retrieves the IPSet specified by the
ipSetId</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_get_malware_scan_settings/"> get_malware_scan_settings </a></td>
<td style="text-align: left;">Returns the details of the malware scan
settings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_get_master_account/"> get_master_account </a></td>
<td style="text-align: left;">Provides the details for the GuardDuty
administrator account associated with the current GuardDuty member
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_get_member_detectors/"> get_member_detectors </a></td>
<td style="text-align: left;">Describes which data sources are enabled
for the member account's detector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_get_members/"> get_members </a></td>
<td style="text-align: left;">Retrieves GuardDuty member accounts (of
the current GuardDuty administrator account) specified by the account
IDs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_get_remaining_free_trial_days/"> get_remaining_free_trial_days </a></td>
<td style="text-align: left;">Provides the number of days left for each
data source used in the free trial period</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_get_threat_intel_set/"> get_threat_intel_set </a></td>
<td style="text-align: left;">Retrieves the ThreatIntelSet that is
specified by the ThreatIntelSet ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_get_usage_statistics/"> get_usage_statistics </a></td>
<td style="text-align: left;">Lists Amazon GuardDuty usage statistics
over the last 30 days for the specified detector ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_invite_members/"> invite_members </a></td>
<td style="text-align: left;">Invites other Amazon Web Services accounts
(created as members of the current Amazon Web Services account by
CreateMembers) to enable GuardDuty, and allow the current Amazon Web
Services account to view and manage these accounts' findings on their
behalf as the GuardDuty administrator account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_list_coverage/"> list_coverage </a></td>
<td style="text-align: left;">Lists coverage details for your GuardDuty
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_list_detectors/"> list_detectors </a></td>
<td style="text-align: left;">Lists detectorIds of all the existing
Amazon GuardDuty detector resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_list_filters/"> list_filters </a></td>
<td style="text-align: left;">Returns a paginated list of the current
filters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_list_findings/"> list_findings </a></td>
<td style="text-align: left;">Lists Amazon GuardDuty findings for the
specified detector ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_list_invitations/"> list_invitations </a></td>
<td style="text-align: left;">Lists all GuardDuty membership invitations
that were sent to the current Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_list_ip_sets/"> list_ip_sets </a></td>
<td style="text-align: left;">Lists the IPSets of the GuardDuty service
specified by the detector ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_list_members/"> list_members </a></td>
<td style="text-align: left;">Lists details about all member accounts
for the current GuardDuty administrator account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_list_organization_admin_accounts/"> list_organization_admin_accounts </a></td>
<td style="text-align: left;">Lists the accounts configured as GuardDuty
delegated administrators</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_list_publishing_destinations/"> list_publishing_destinations </a></td>
<td style="text-align: left;">Returns a list of publishing destinations
associated with the specified detectorId</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists tags for a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_list_threat_intel_sets/"> list_threat_intel_sets </a></td>
<td style="text-align: left;">Lists the ThreatIntelSets of the GuardDuty
service specified by the detector ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_start_malware_scan/"> start_malware_scan </a></td>
<td style="text-align: left;">Initiates the malware scan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_start_monitoring_members/"> start_monitoring_members </a></td>
<td style="text-align: left;">Turns on GuardDuty monitoring of the
specified member accounts</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_stop_monitoring_members/"> stop_monitoring_members </a></td>
<td style="text-align: left;">Stops GuardDuty monitoring for the
specified member accounts</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds tags to a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_unarchive_findings/"> unarchive_findings </a></td>
<td style="text-align: left;">Unarchives GuardDuty findings specified by
the findingIds</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_update_detector/"> update_detector </a></td>
<td style="text-align: left;">Updates the Amazon GuardDuty detector
specified by the detectorId</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_update_filter/"> update_filter </a></td>
<td style="text-align: left;">Updates the filter specified by the filter
name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_update_findings_feedback/"> update_findings_feedback </a></td>
<td style="text-align: left;">Marks the specified GuardDuty findings as
useful or not useful</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_update_ip_set/"> update_ip_set </a></td>
<td style="text-align: left;">Updates the IPSet specified by the IPSet
ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_update_malware_scan_settings/"> update_malware_scan_settings </a></td>
<td style="text-align: left;">Updates the malware scan settings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_update_member_detectors/"> update_member_detectors </a></td>
<td style="text-align: left;">Contains information on member accounts to
be updated</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_update_organization_configuration/"> update_organization_configuration </a></td>
<td style="text-align: left;">Configures the delegated administrator
account with the provided values</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../guardduty_update_publishing_destination/"> update_publishing_destination </a></td>
<td style="text-align: left;">Updates information about the publishing
destination specified by the destinationId</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../guardduty_update_threat_intel_set/"> update_threat_intel_set </a></td>
<td style="text-align: left;">Updates the ThreatIntelSet specified by
the ThreatIntelSet ID</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- guardduty()
    svc$accept_administrator_invitation(
      Foo = 123
    )

    ## End(Not run)
