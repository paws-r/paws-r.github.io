<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Resource Groups

### Description

Resource Groups lets you organize Amazon Web Services resources such as
Amazon Elastic Compute Cloud instances, Amazon Relational Database
Service databases, and Amazon Simple Storage Service buckets into groups
using criteria that you define as tags. A resource group is a collection
of resources that match the resource types specified in a query, and
share one or more tags or portions of tags. You can create a group of
resources based on their roles in your cloud infrastructure, lifecycle
stages, regions, application layers, or virtually any criteria. Resource
Groups enable you to automate management tasks, such as those in Amazon
Web Services Systems Manager Automation documents, on tag-related
resources in Amazon Web Services Systems Manager. Groups of tagged
resources also let you quickly view a custom console in Amazon Web
Services Systems Manager that shows Config compliance and other
monitoring data about member resources.

To create a resource group, build a resource query, and specify tags
that identify the criteria that members of the group have in common.
Tags are key-value pairs.

For more information about Resource Groups, see the [Resource Groups
User Guide](https://docs.aws.amazon.com/ARG/latest/userguide/).

Resource Groups uses a REST-compliant API that you can use to perform
the following types of operations.

-   Create, Read, Update, and Delete (CRUD) operations on resource
    groups and resource query entities

-   Applying, editing, and removing tags from resource groups

-   Resolving resource group member ARNs so they can be returned as
    search results

-   Getting data about resources that are members of a group

-   Searching Amazon Web Services resources based on a resource query

### Usage

    resourcegroups(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="resourcegroups_:_config">config</code></td>
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

    svc <- resourcegroups(
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
<td style="text-align: left;"><a href="../resourcegroups_create_group/"> create_group </a></td>
<td style="text-align: left;">Creates a resource group with the
specified name and description</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resourcegroups_delete_group/"> delete_group </a></td>
<td style="text-align: left;">Deletes the specified resource group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resourcegroups_get_account_settings/"> get_account_settings </a></td>
<td style="text-align: left;">Retrieves the current status of optional
features in Resource Groups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resourcegroups_get_group/"> get_group </a></td>
<td style="text-align: left;">Returns information about a specified
resource group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resourcegroups_get_group_configuration/"> get_group_configuration </a></td>
<td style="text-align: left;">Retrieves the service configuration
associated with the specified resource group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resourcegroups_get_group_query/"> get_group_query </a></td>
<td style="text-align: left;">Retrieves the resource query associated
with the specified resource group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resourcegroups_get_tags/"> get_tags </a></td>
<td style="text-align: left;">Returns a list of tags that are associated
with a resource group, specified by an ARN</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resourcegroups_group_resources/"> group_resources </a></td>
<td style="text-align: left;">Adds the specified resources to the
specified group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resourcegroups_list_group_resources/"> list_group_resources </a></td>
<td style="text-align: left;">Returns a list of ARNs of the resources
that are members of a specified resource group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resourcegroups_list_groups/"> list_groups </a></td>
<td style="text-align: left;">Returns a list of existing Resource Groups
in your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resourcegroups_put_group_configuration/"> put_group_configuration </a></td>
<td style="text-align: left;">Attaches a service configuration to the
specified group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resourcegroups_search_resources/"> search_resources </a></td>
<td style="text-align: left;">Returns a list of Amazon Web Services
resource identifiers that matches the specified query</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resourcegroups_tag/"> tag </a></td>
<td style="text-align: left;">Adds tags to a resource group with the
specified ARN</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resourcegroups_ungroup_resources/"> ungroup_resources </a></td>
<td style="text-align: left;">Removes the specified resources from the
specified group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resourcegroups_untag/"> untag </a></td>
<td style="text-align: left;">Deletes tags from a specified resource
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resourcegroups_update_account_settings/"> update_account_settings </a></td>
<td style="text-align: left;">Turns on or turns off optional features in
Resource Groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resourcegroups_update_group/"> update_group </a></td>
<td style="text-align: left;">Updates the description for an existing
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resourcegroups_update_group_query/"> update_group_query </a></td>
<td style="text-align: left;">Updates the resource query of a group</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- resourcegroups()
    svc$create_group(
      Foo = 123
    )

    ## End(Not run)
