<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Service Catalog App Registry

### Description

Amazon Web Services Service Catalog AppRegistry enables organizations to
understand the application context of their Amazon Web Services
resources. AppRegistry provides a repository of your applications, their
resources, and the application metadata that you use within your
enterprise.

### Usage

    appregistry(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appregistry_:_config">config</code></td>
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

    svc <- appregistry(
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
<td style="text-align: left;"><a href="../appregistry_associate_attribute_group/"> associate_attribute_group </a></td>
<td style="text-align: left;">Associates an attribute group with an
application to augment the application's metadata with the group's
attributes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appregistry_associate_resource/"> associate_resource </a></td>
<td style="text-align: left;">Associates a resource with an
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appregistry_create_application/"> create_application </a></td>
<td style="text-align: left;">Creates a new application that is the
top-level node in a hierarchy of related cloud resource
abstractions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appregistry_create_attribute_group/"> create_attribute_group </a></td>
<td style="text-align: left;">Creates a new attribute group as a
container for user-defined attributes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appregistry_delete_application/"> delete_application </a></td>
<td style="text-align: left;">Deletes an application that is specified
either by its application ID, name, or ARN</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appregistry_delete_attribute_group/"> delete_attribute_group </a></td>
<td style="text-align: left;">Deletes an attribute group, specified
either by its attribute group ID, name, or ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appregistry_disassociate_attribute_group/"> disassociate_attribute_group </a></td>
<td style="text-align: left;">Disassociates an attribute group from an
application to remove the extra attributes contained in the attribute
group from the application's metadata</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appregistry_disassociate_resource/"> disassociate_resource </a></td>
<td style="text-align: left;">Disassociates a resource from
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appregistry_get_application/"> get_application </a></td>
<td style="text-align: left;">Retrieves metadata information about one
of your applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appregistry_get_associated_resource/"> get_associated_resource </a></td>
<td style="text-align: left;">Gets the resource associated with the
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appregistry_get_attribute_group/"> get_attribute_group </a></td>
<td style="text-align: left;">Retrieves an attribute group by its ARN,
ID, or name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appregistry_get_configuration/"> get_configuration </a></td>
<td style="text-align: left;">Retrieves a TagKey configuration from an
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appregistry_list_applications/"> list_applications </a></td>
<td style="text-align: left;">Retrieves a list of all of your
applications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appregistry_list_associated_attribute_groups/"> list_associated_attribute_groups </a></td>
<td style="text-align: left;">Lists all attribute groups that are
associated with specified application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appregistry_list_associated_resources/"> list_associated_resources </a></td>
<td style="text-align: left;">Lists all of the resources that are
associated with the specified application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appregistry_list_attribute_groups/"> list_attribute_groups </a></td>
<td style="text-align: left;">Lists all attribute groups which you have
access to</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appregistry_list_attribute_groups_for_application/"> list_attribute_groups_for_application </a></td>
<td style="text-align: left;">Lists the details of all attribute groups
associated with a specific application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appregistry_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all of the tags on the resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appregistry_put_configuration/"> put_configuration </a></td>
<td style="text-align: left;">Associates a TagKey configuration to an
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appregistry_sync_resource/"> sync_resource </a></td>
<td style="text-align: left;">Syncs the resource with current
AppRegistry records</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appregistry_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns one or more tags (key-value pairs)
to the specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appregistry_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appregistry_update_application/"> update_application </a></td>
<td style="text-align: left;">Updates an existing application with new
attributes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appregistry_update_attribute_group/"> update_attribute_group </a></td>
<td style="text-align: left;">Updates an existing attribute group with
new details</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- appregistry()
    svc$associate_attribute_group(
      Foo = 123
    )

    ## End(Not run)
