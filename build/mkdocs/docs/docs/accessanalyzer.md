<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Access Analyzer

### Description

Identity and Access Management Access Analyzer helps identify potential
resource-access risks by enabling you to identify any policies that
grant access to an external principal. It does this by using logic-based
reasoning to analyze resource-based policies in your Amazon Web Services
environment. An external principal can be another Amazon Web Services
account, a root user, an IAM user or role, a federated user, an Amazon
Web Services service, or an anonymous user. You can also use IAM Access
Analyzer to preview and validate public and cross-account access to your
resources before deploying permissions changes. This guide describes the
Identity and Access Management Access Analyzer operations that you can
call programmatically. For general information about IAM Access
Analyzer, see [Identity and Access Management Access
Analyzer](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html)
in the **IAM User Guide**.

To start using IAM Access Analyzer, you first need to create an
analyzer.

### Usage

    accessanalyzer(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="accessanalyzer_:_config">config</code></td>
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

    svc <- accessanalyzer(
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
<td style="text-align: left;"><a href="../accessanalyzer_apply_archive_rule/"> apply_archive_rule </a></td>
<td style="text-align: left;">Retroactively applies the archive rule to
existing findings that meet the archive rule criteria</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../accessanalyzer_cancel_policy_generation/"> cancel_policy_generation </a></td>
<td style="text-align: left;">Cancels the requested policy
generation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../accessanalyzer_create_access_preview/"> create_access_preview </a></td>
<td style="text-align: left;">Creates an access preview that allows you
to preview IAM Access Analyzer findings for your resource before
deploying resource permissions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../accessanalyzer_create_analyzer/"> create_analyzer </a></td>
<td style="text-align: left;">Creates an analyzer for your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../accessanalyzer_create_archive_rule/"> create_archive_rule </a></td>
<td style="text-align: left;">Creates an archive rule for the specified
analyzer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../accessanalyzer_delete_analyzer/"> delete_analyzer </a></td>
<td style="text-align: left;">Deletes the specified analyzer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../accessanalyzer_delete_archive_rule/"> delete_archive_rule </a></td>
<td style="text-align: left;">Deletes the specified archive rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../accessanalyzer_get_access_preview/"> get_access_preview </a></td>
<td style="text-align: left;">Retrieves information about an access
preview for the specified analyzer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../accessanalyzer_get_analyzed_resource/"> get_analyzed_resource </a></td>
<td style="text-align: left;">Retrieves information about a resource
that was analyzed</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../accessanalyzer_get_analyzer/"> get_analyzer </a></td>
<td style="text-align: left;">Retrieves information about the specified
analyzer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../accessanalyzer_get_archive_rule/"> get_archive_rule </a></td>
<td style="text-align: left;">Retrieves information about an archive
rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../accessanalyzer_get_finding/"> get_finding </a></td>
<td style="text-align: left;">Retrieves information about the specified
finding</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../accessanalyzer_get_generated_policy/"> get_generated_policy </a></td>
<td style="text-align: left;">Retrieves the policy that was generated
using StartPolicyGeneration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../accessanalyzer_list_access_preview_findings/"> list_access_preview_findings </a></td>
<td style="text-align: left;">Retrieves a list of access preview
findings generated by the specified access preview</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../accessanalyzer_list_access_previews/"> list_access_previews </a></td>
<td style="text-align: left;">Retrieves a list of access previews for
the specified analyzer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../accessanalyzer_list_analyzed_resources/"> list_analyzed_resources </a></td>
<td style="text-align: left;">Retrieves a list of resources of the
specified type that have been analyzed by the specified analyzer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../accessanalyzer_list_analyzers/"> list_analyzers </a></td>
<td style="text-align: left;">Retrieves a list of analyzers</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../accessanalyzer_list_archive_rules/"> list_archive_rules </a></td>
<td style="text-align: left;">Retrieves a list of archive rules created
for the specified analyzer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../accessanalyzer_list_findings/"> list_findings </a></td>
<td style="text-align: left;">Retrieves a list of findings generated by
the specified analyzer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../accessanalyzer_list_policy_generations/"> list_policy_generations </a></td>
<td style="text-align: left;">Lists all of the policy generations
requested in the last seven days</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../accessanalyzer_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Retrieves a list of tags applied to the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../accessanalyzer_start_policy_generation/"> start_policy_generation </a></td>
<td style="text-align: left;">Starts the policy generation request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../accessanalyzer_start_resource_scan/"> start_resource_scan </a></td>
<td style="text-align: left;">Immediately starts a scan of the policies
applied to the specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../accessanalyzer_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds a tag to the specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../accessanalyzer_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a tag from the specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../accessanalyzer_update_archive_rule/"> update_archive_rule </a></td>
<td style="text-align: left;">Updates the criteria and values for the
specified archive rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../accessanalyzer_update_findings/"> update_findings </a></td>
<td style="text-align: left;">Updates the status for the specified
findings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../accessanalyzer_validate_policy/"> validate_policy </a></td>
<td style="text-align: left;">Requests the validation of a policy and
returns a list of findings</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- accessanalyzer()
    svc$apply_archive_rule(
      Foo = 123
    )

    ## End(Not run)
