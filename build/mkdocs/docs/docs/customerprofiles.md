<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Connect Customer Profiles

### Description

Amazon Connect Customer Profiles is a unified customer profile for your
contact center that has pre-built connectors powered by AppFlow that
make it easy to combine customer information from third party
applications, such as Salesforce (CRM), ServiceNow (ITSM), and your
enterprise resource planning (ERP), with contact history from your
Amazon Connect contact center. If you're new to Amazon Connect, you
might find it helpful to review the [Amazon Connect Administrator
Guide](https://docs.aws.amazon.com/connect/latest/adminguide/).

### Usage

    customerprofiles(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="customerprofiles_:_config">config</code></td>
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

    svc <- customerprofiles(
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
<td style="text-align: left;"><a href="../customerprofiles_add_profile_key/"> add_profile_key </a></td>
<td style="text-align: left;">Associates a new key value with a specific
profile, such as a Contact Record ContactId</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_create_domain/"> create_domain </a></td>
<td style="text-align: left;">Creates a domain, which is a container for
all customer data, such as customer profile attributes, object types,
profile keys, and encryption keys</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_create_integration_workflow/"> create_integration_workflow </a></td>
<td style="text-align: left;">Creates an integration workflow</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_create_profile/"> create_profile </a></td>
<td style="text-align: left;">Creates a standard profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_delete_domain/"> delete_domain </a></td>
<td style="text-align: left;">Deletes a specific domain and all of its
customer data, such as customer profile attributes and their related
objects</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_delete_integration/"> delete_integration </a></td>
<td style="text-align: left;">Removes an integration from a specific
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_delete_profile/"> delete_profile </a></td>
<td style="text-align: left;">Deletes the standard customer profile and
all data pertaining to the profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_delete_profile_key/"> delete_profile_key </a></td>
<td style="text-align: left;">Removes a searchable key from a customer
profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_delete_profile_object/"> delete_profile_object </a></td>
<td style="text-align: left;">Removes an object associated with a
profile of a given ProfileObjectType</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_delete_profile_object_type/"> delete_profile_object_type </a></td>
<td style="text-align: left;">Removes a ProfileObjectType from a
specific domain as well as removes all the ProfileObjects of that
type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_delete_workflow/"> delete_workflow </a></td>
<td style="text-align: left;">Deletes the specified workflow and all its
corresponding resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_get_auto_merging_preview/"> get_auto_merging_preview </a></td>
<td style="text-align: left;">Tests the auto-merging settings of your
Identity Resolution Job without merging your data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_get_domain/"> get_domain </a></td>
<td style="text-align: left;">Returns information about a specific
domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_get_identity_resolution_job/"> get_identity_resolution_job </a></td>
<td style="text-align: left;">Returns information about an Identity
Resolution Job in a specific domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_get_integration/"> get_integration </a></td>
<td style="text-align: left;">Returns an integration for a domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_get_matches/"> get_matches </a></td>
<td style="text-align: left;">Before calling this API, use CreateDomain
or UpdateDomain to enable identity resolution: set Matching to true</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_get_profile_object_type/"> get_profile_object_type </a></td>
<td style="text-align: left;">Returns the object types for a specific
domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_get_profile_object_type_template/"> get_profile_object_type_template </a></td>
<td style="text-align: left;">Returns the template information for a
specific object type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_get_workflow/"> get_workflow </a></td>
<td style="text-align: left;">Get details of specified workflow</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_get_workflow_steps/"> get_workflow_steps </a></td>
<td style="text-align: left;">Get granular list of steps in
workflow</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_list_account_integrations/"> list_account_integrations </a></td>
<td style="text-align: left;">Lists all of the integrations associated
to a specific URI in the AWS account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_list_domains/"> list_domains </a></td>
<td style="text-align: left;">Returns a list of all the domains for an
AWS account that have been created</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_list_identity_resolution_jobs/"> list_identity_resolution_jobs </a></td>
<td style="text-align: left;">Lists all of the Identity Resolution Jobs
in your domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_list_integrations/"> list_integrations </a></td>
<td style="text-align: left;">Lists all of the integrations in your
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_list_profile_objects/"> list_profile_objects </a></td>
<td style="text-align: left;">Returns a list of objects associated with
a profile of a given ProfileObjectType</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_list_profile_object_types/"> list_profile_object_types </a></td>
<td style="text-align: left;">Lists all of the templates available
within the service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_list_profile_object_type_templates/"> list_profile_object_type_templates </a></td>
<td style="text-align: left;">Lists all of the template information for
object types</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Displays the tags associated with an
Amazon Connect Customer Profiles resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_list_workflows/"> list_workflows </a></td>
<td style="text-align: left;">Query to list all workflows</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_merge_profiles/"> merge_profiles </a></td>
<td style="text-align: left;">Runs an AWS Lambda job that does the
following:</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_put_integration/"> put_integration </a></td>
<td style="text-align: left;">Adds an integration between the service
and a third-party service, which includes Amazon AppFlow and Amazon
Connect</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_put_profile_object/"> put_profile_object </a></td>
<td style="text-align: left;">Adds additional objects to customer
profiles of a given ObjectType</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_put_profile_object_type/"> put_profile_object_type </a></td>
<td style="text-align: left;">Defines a ProfileObjectType</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_search_profiles/"> search_profiles </a></td>
<td style="text-align: left;">Searches for profiles within a specific
domain using one or more predefined search keys (e</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns one or more tags (key-value pairs)
to the specified Amazon Connect Customer Profiles resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from the
specified Amazon Connect Customer Profiles resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../customerprofiles_update_domain/"> update_domain </a></td>
<td style="text-align: left;">Updates the properties of a domain,
including creating or selecting a dead letter queue or an encryption
key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../customerprofiles_update_profile/"> update_profile </a></td>
<td style="text-align: left;">Updates the properties of a profile</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- customerprofiles()
    svc$add_profile_key(
      Foo = 123
    )

    ## End(Not run)
