<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Well-Architected Tool

### Description

Well-Architected Tool

This is the *Well-Architected Tool API Reference*. The WA Tool API
provides programmatic access to the [Well-Architected
Tool](https://aws.amazon.com/well-architected-tool/) in the Amazon Web
Services Management Console. For information about the Well-Architected
Tool, see the [Well-Architected Tool User
Guide](https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html).

### Usage

    wellarchitected(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wellarchitected_:_config">config</code></td>
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

    svc <- wellarchitected(
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
<td style="text-align: left;"><a href="../wellarchitected_associate_lenses/"> associate_lenses </a></td>
<td style="text-align: left;">Associate a lens to a workload</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_create_lens_share/"> create_lens_share </a></td>
<td style="text-align: left;">Create a lens share</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_create_lens_version/"> create_lens_version </a></td>
<td style="text-align: left;">Create a new lens version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_create_milestone/"> create_milestone </a></td>
<td style="text-align: left;">Create a milestone for an existing
workload</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_create_workload/"> create_workload </a></td>
<td style="text-align: left;">Create a new workload</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_create_workload_share/"> create_workload_share </a></td>
<td style="text-align: left;">Create a workload share</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_delete_lens/"> delete_lens </a></td>
<td style="text-align: left;">Delete an existing lens</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_delete_lens_share/"> delete_lens_share </a></td>
<td style="text-align: left;">Delete a lens share</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_delete_workload/"> delete_workload </a></td>
<td style="text-align: left;">Delete an existing workload</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_delete_workload_share/"> delete_workload_share </a></td>
<td style="text-align: left;">Delete a workload share</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_disassociate_lenses/"> disassociate_lenses </a></td>
<td style="text-align: left;">Disassociate a lens from a workload</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_export_lens/"> export_lens </a></td>
<td style="text-align: left;">Export an existing lens</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_get_answer/"> get_answer </a></td>
<td style="text-align: left;">Get the answer to a specific question in a
workload review</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_get_consolidated_report/"> get_consolidated_report </a></td>
<td style="text-align: left;">Get a consolidated report of your
workloads</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_get_lens/"> get_lens </a></td>
<td style="text-align: left;">Get an existing lens</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_get_lens_review/"> get_lens_review </a></td>
<td style="text-align: left;">Get lens review</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_get_lens_review_report/"> get_lens_review_report </a></td>
<td style="text-align: left;">Get lens review report</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_get_lens_version_difference/"> get_lens_version_difference </a></td>
<td style="text-align: left;">Get lens version differences</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_get_milestone/"> get_milestone </a></td>
<td style="text-align: left;">Get a milestone for an existing
workload</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_get_workload/"> get_workload </a></td>
<td style="text-align: left;">Get an existing workload</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_import_lens/"> import_lens </a></td>
<td style="text-align: left;">Import a new custom lens or update an
existing custom lens</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_list_answers/"> list_answers </a></td>
<td style="text-align: left;">List of answers for a particular workload
and lens</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_list_check_details/"> list_check_details </a></td>
<td style="text-align: left;">List of Trusted Advisor check details by
account related to the workload</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_list_check_summaries/"> list_check_summaries </a></td>
<td style="text-align: left;">List of Trusted Advisor checks summarized
for all accounts related to the workload</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_list_lenses/"> list_lenses </a></td>
<td style="text-align: left;">List the available lenses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_list_lens_review_improvements/"> list_lens_review_improvements </a></td>
<td style="text-align: left;">List lens review improvements</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_list_lens_reviews/"> list_lens_reviews </a></td>
<td style="text-align: left;">List lens reviews for a particular
workload</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_list_lens_shares/"> list_lens_shares </a></td>
<td style="text-align: left;">List the lens shares associated with the
lens</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_list_milestones/"> list_milestones </a></td>
<td style="text-align: left;">List all milestones for an existing
workload</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_list_notifications/"> list_notifications </a></td>
<td style="text-align: left;">List lens notifications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_list_share_invitations/"> list_share_invitations </a></td>
<td style="text-align: left;">List the workload invitations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List the tags for a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_list_workloads/"> list_workloads </a></td>
<td style="text-align: left;">Paginated list of workloads</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_list_workload_shares/"> list_workload_shares </a></td>
<td style="text-align: left;">List the workload shares associated with
the workload</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more tags to the specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes specified tags from a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_update_answer/"> update_answer </a></td>
<td style="text-align: left;">Update the answer to a specific question
in a workload review</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_update_global_settings/"> update_global_settings </a></td>
<td style="text-align: left;">Updates whether the Amazon Web Services
account is opted into organization sharing and discovery integration
features</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_update_lens_review/"> update_lens_review </a></td>
<td style="text-align: left;">Update lens review for a particular
workload</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_update_share_invitation/"> update_share_invitation </a></td>
<td style="text-align: left;">Update a workload or custom lens share
invitation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_update_workload/"> update_workload </a></td>
<td style="text-align: left;">Update an existing workload</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../wellarchitected_update_workload_share/"> update_workload_share </a></td>
<td style="text-align: left;">Update a workload share</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../wellarchitected_upgrade_lens_review/"> upgrade_lens_review </a></td>
<td style="text-align: left;">Upgrade lens review for a particular
workload</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- wellarchitected()
    svc$associate_lenses(
      Foo = 123
    )

    ## End(Not run)
