<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Resilience Hub

### Description

Resilience Hub helps you proactively prepare and protect your Amazon Web
Services applications from disruptions. It offers continual resiliency
assessment and validation that integrates into your software development
lifecycle. This enables you to uncover resiliency weaknesses, ensure
recovery time objective (RTO) and recovery point objective (RPO) targets
for your applications are met, and resolve issues before they are
released into production.

### Usage

    resiliencehub(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="resiliencehub_:_config">config</code></td>
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

    svc <- resiliencehub(
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
style="text-align: left;"><a href="../resiliencehub_add_draft_app_version_resource_mappings/"> add_draft_app_version_resource_mappings </a></td>
<td style="text-align: left;">Adds the resource mapping for the draft
application version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_create_app/"> create_app </a></td>
<td style="text-align: left;">Creates an Resilience Hub application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_create_app_version_app_component/"> create_app_version_app_component </a></td>
<td style="text-align: left;">Creates a new Application Component in the
Resilience Hub application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_create_app_version_resource/"> create_app_version_resource </a></td>
<td style="text-align: left;">Adds a resource to the Resilience Hub
application and assigns it to the specified Application Components</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_create_recommendation_template/"> create_recommendation_template </a></td>
<td style="text-align: left;">Creates a new recommendation template for
the Resilience Hub application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_create_resiliency_policy/"> create_resiliency_policy </a></td>
<td style="text-align: left;">Creates a resiliency policy for an
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_delete_app/"> delete_app </a></td>
<td style="text-align: left;">Deletes an Resilience Hub application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_delete_app_assessment/"> delete_app_assessment </a></td>
<td style="text-align: left;">Deletes an Resilience Hub application
assessment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_delete_app_input_source/"> delete_app_input_source </a></td>
<td style="text-align: left;">Deletes the input source and all of its
imported resources from the Resilience Hub application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_delete_app_version_app_component/"> delete_app_version_app_component </a></td>
<td style="text-align: left;">Deletes an Application Component from the
Resilience Hub application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_delete_app_version_resource/"> delete_app_version_resource </a></td>
<td style="text-align: left;">Deletes a resource from the Resilience Hub
application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_delete_recommendation_template/"> delete_recommendation_template </a></td>
<td style="text-align: left;">Deletes a recommendation template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_delete_resiliency_policy/"> delete_resiliency_policy </a></td>
<td style="text-align: left;">Deletes a resiliency policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_describe_app/"> describe_app </a></td>
<td style="text-align: left;">Describes an Resilience Hub
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_describe_app_assessment/"> describe_app_assessment </a></td>
<td style="text-align: left;">Describes an assessment for an Resilience
Hub application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_describe_app_version/"> describe_app_version </a></td>
<td style="text-align: left;">Describes the Resilience Hub application
version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_describe_app_version_app_component/"> describe_app_version_app_component </a></td>
<td style="text-align: left;">Describes an Application Component in the
Resilience Hub application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_describe_app_version_resource/"> describe_app_version_resource </a></td>
<td style="text-align: left;">Describes a resource of the Resilience Hub
application</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../resiliencehub_describe_app_version_resources_resolution_status/"> describe_app_version_resources_resolution_status </a></td>
<td style="text-align: left;">Returns the resolution status for the
specified resolution identifier for an application version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_describe_app_version_template/"> describe_app_version_template </a></td>
<td style="text-align: left;">Describes details about an Resilience Hub
application</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../resiliencehub_describe_draft_app_version_resources_import_status/"> describe_draft_app_version_resources_import_status </a></td>
<td style="text-align: left;">Describes the status of importing
resources to an application version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_describe_resiliency_policy/"> describe_resiliency_policy </a></td>
<td style="text-align: left;">Describes a specified resiliency policy
for an Resilience Hub application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_import_resources_to_draft_app_version/"> import_resources_to_draft_app_version </a></td>
<td style="text-align: left;">Imports resources to Resilience Hub
application draft version from different input sources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_list_alarm_recommendations/"> list_alarm_recommendations </a></td>
<td style="text-align: left;">Lists the alarm recommendations for an
Resilience Hub application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_list_app_assessments/"> list_app_assessments </a></td>
<td style="text-align: left;">Lists the assessments for an Resilience
Hub application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_list_app_component_compliances/"> list_app_component_compliances </a></td>
<td style="text-align: left;">Lists the compliances for an Resilience
Hub Application Component</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_list_app_component_recommendations/"> list_app_component_recommendations </a></td>
<td style="text-align: left;">Lists the recommendations for an
Resilience Hub Application Component</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_list_app_input_sources/"> list_app_input_sources </a></td>
<td style="text-align: left;">Lists all the input sources of the
Resilience Hub application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_list_apps/"> list_apps </a></td>
<td style="text-align: left;">Lists your Resilience Hub
applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_list_app_version_app_components/"> list_app_version_app_components </a></td>
<td style="text-align: left;">Lists all the Application Components in
the Resilience Hub application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_list_app_version_resource_mappings/"> list_app_version_resource_mappings </a></td>
<td style="text-align: left;">Lists how the resources in an application
version are mapped/sourced from</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_list_app_version_resources/"> list_app_version_resources </a></td>
<td style="text-align: left;">Lists all the resources in an Resilience
Hub application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_list_app_versions/"> list_app_versions </a></td>
<td style="text-align: left;">Lists the different versions for the
Resilience Hub applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_list_recommendation_templates/"> list_recommendation_templates </a></td>
<td style="text-align: left;">Lists the recommendation templates for the
Resilience Hub applications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_list_resiliency_policies/"> list_resiliency_policies </a></td>
<td style="text-align: left;">Lists the resiliency policies for the
Resilience Hub applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_list_sop_recommendations/"> list_sop_recommendations </a></td>
<td style="text-align: left;">Lists the standard operating procedure
(SOP) recommendations for the Resilience Hub applications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_list_suggested_resiliency_policies/"> list_suggested_resiliency_policies </a></td>
<td style="text-align: left;">Lists the suggested resiliency policies
for the Resilience Hub applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags for your resources in your
Resilience Hub applications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_list_test_recommendations/"> list_test_recommendations </a></td>
<td style="text-align: left;">Lists the test recommendations for the
Resilience Hub application</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../resiliencehub_list_unsupported_app_version_resources/"> list_unsupported_app_version_resources </a></td>
<td style="text-align: left;">Lists the resources that are not currently
supported in Resilience Hub</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_publish_app_version/"> publish_app_version </a></td>
<td style="text-align: left;">Publishes a new version of a specific
Resilience Hub application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_put_draft_app_version_template/"> put_draft_app_version_template </a></td>
<td style="text-align: left;">Adds or updates the app template for an
Resilience Hub application draft version</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../resiliencehub_remove_draft_app_version_resource_mappings/"> remove_draft_app_version_resource_mappings </a></td>
<td style="text-align: left;">Removes resource mappings from a draft
application version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_resolve_app_version_resources/"> resolve_app_version_resources </a></td>
<td style="text-align: left;">Resolves the resources for an application
version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_start_app_assessment/"> start_app_assessment </a></td>
<td style="text-align: left;">Creates a new application assessment for
an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Applies one or more tags to a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_update_app/"> update_app </a></td>
<td style="text-align: left;">Updates an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_update_app_version/"> update_app_version </a></td>
<td style="text-align: left;">Updates the Resilience Hub application
version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_update_app_version_app_component/"> update_app_version_app_component </a></td>
<td style="text-align: left;">Updates an existing Application Component
in the Resilience Hub application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resiliencehub_update_app_version_resource/"> update_app_version_resource </a></td>
<td style="text-align: left;">Updates the resource details in the
Resilience Hub application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resiliencehub_update_resiliency_policy/"> update_resiliency_policy </a></td>
<td style="text-align: left;">Updates a resiliency policy</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- resiliencehub()
    svc$add_draft_app_version_resource_mappings(
      Foo = 123
    )

    ## End(Not run)
