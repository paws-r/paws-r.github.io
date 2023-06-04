<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon CloudDirectory

### Description

Amazon Cloud Directory

Amazon Cloud Directory is a component of the AWS Directory Service that
simplifies the development and management of cloud-scale web, mobile,
and IoT applications. This guide describes the Cloud Directory
operations that you can call programmatically and includes detailed
information on data types and errors. For information about Cloud
Directory features, see [AWS Directory
Service](https://aws.amazon.com/directoryservice/) and the [Amazon Cloud
Directory Developer
Guide](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/what_is_cloud_directory.html).

### Usage

    clouddirectory(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="clouddirectory_:_config">config</code></td>
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

    svc <- clouddirectory(
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
<td style="text-align: left;"><a href="../clouddirectory_add_facet_to_object/"> add_facet_to_object </a></td>
<td style="text-align: left;">Adds a new Facet to an object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_apply_schema/"> apply_schema </a></td>
<td style="text-align: left;">Copies the input published schema, at the
specified version, into the Directory with the same name and version as
that of the published schema</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_attach_object/"> attach_object </a></td>
<td style="text-align: left;">Attaches an existing object to another
object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_attach_policy/"> attach_policy </a></td>
<td style="text-align: left;">Attaches a policy object to a regular
object</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_attach_to_index/"> attach_to_index </a></td>
<td style="text-align: left;">Attaches the specified object to the
specified index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_attach_typed_link/"> attach_typed_link </a></td>
<td style="text-align: left;">Attaches a typed link to a specified
source and target object</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_batch_read/"> batch_read </a></td>
<td style="text-align: left;">Performs all the read operations in a
batch</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_batch_write/"> batch_write </a></td>
<td style="text-align: left;">Performs all the write operations in a
batch</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_create_directory/"> create_directory </a></td>
<td style="text-align: left;">Creates a Directory by copying the
published schema into the directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_create_facet/"> create_facet </a></td>
<td style="text-align: left;">Creates a new Facet in a schema</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_create_index/"> create_index </a></td>
<td style="text-align: left;">Creates an index object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_create_object/"> create_object </a></td>
<td style="text-align: left;">Creates an object in a Directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_create_schema/"> create_schema </a></td>
<td style="text-align: left;">Creates a new schema in a development
state</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_create_typed_link_facet/"> create_typed_link_facet </a></td>
<td style="text-align: left;">Creates a TypedLinkFacet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_delete_directory/"> delete_directory </a></td>
<td style="text-align: left;">Deletes a directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_delete_facet/"> delete_facet </a></td>
<td style="text-align: left;">Deletes a given Facet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_delete_object/"> delete_object </a></td>
<td style="text-align: left;">Deletes an object and its associated
attributes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_delete_schema/"> delete_schema </a></td>
<td style="text-align: left;">Deletes a given schema</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_delete_typed_link_facet/"> delete_typed_link_facet </a></td>
<td style="text-align: left;">Deletes a TypedLinkFacet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_detach_from_index/"> detach_from_index </a></td>
<td style="text-align: left;">Detaches the specified object from the
specified index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_detach_object/"> detach_object </a></td>
<td style="text-align: left;">Detaches a given object from the parent
object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_detach_policy/"> detach_policy </a></td>
<td style="text-align: left;">Detaches a policy from an object</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_detach_typed_link/"> detach_typed_link </a></td>
<td style="text-align: left;">Detaches a typed link from a specified
source and target object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_disable_directory/"> disable_directory </a></td>
<td style="text-align: left;">Disables the specified directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_enable_directory/"> enable_directory </a></td>
<td style="text-align: left;">Enables the specified directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_get_applied_schema_version/"> get_applied_schema_version </a></td>
<td style="text-align: left;">Returns current applied schema version
ARN, including the minor version in use</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_get_directory/"> get_directory </a></td>
<td style="text-align: left;">Retrieves metadata about a directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_get_facet/"> get_facet </a></td>
<td style="text-align: left;">Gets details of the Facet, such as facet
name, attributes, Rules, or ObjectType</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_get_link_attributes/"> get_link_attributes </a></td>
<td style="text-align: left;">Retrieves attributes that are associated
with a typed link</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_get_object_attributes/"> get_object_attributes </a></td>
<td style="text-align: left;">Retrieves attributes within a facet that
are associated with an object</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_get_object_information/"> get_object_information </a></td>
<td style="text-align: left;">Retrieves metadata about an object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_get_schema_as_json/"> get_schema_as_json </a></td>
<td style="text-align: left;">Retrieves a JSON representation of the
schema</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_get_typed_link_facet_information/"> get_typed_link_facet_information </a></td>
<td style="text-align: left;">Returns the identity attribute order for a
specific TypedLinkFacet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_list_applied_schema_arns/"> list_applied_schema_arns </a></td>
<td style="text-align: left;">Lists schema major versions applied to a
directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_list_attached_indices/"> list_attached_indices </a></td>
<td style="text-align: left;">Lists indices attached to the specified
object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_list_development_schema_arns/"> list_development_schema_arns </a></td>
<td style="text-align: left;">Retrieves each Amazon Resource Name (ARN)
of schemas in the development state</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_list_directories/"> list_directories </a></td>
<td style="text-align: left;">Lists directories created within an
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_list_facet_attributes/"> list_facet_attributes </a></td>
<td style="text-align: left;">Retrieves attributes attached to the
facet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_list_facet_names/"> list_facet_names </a></td>
<td style="text-align: left;">Retrieves the names of facets that exist
in a schema</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_list_incoming_typed_links/"> list_incoming_typed_links </a></td>
<td style="text-align: left;">Returns a paginated list of all the
incoming TypedLinkSpecifier information for an object</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_list_index/"> list_index </a></td>
<td style="text-align: left;">Lists objects attached to the specified
index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_list_managed_schema_arns/"> list_managed_schema_arns </a></td>
<td style="text-align: left;">Lists the major version families of each
managed schema</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_list_object_attributes/"> list_object_attributes </a></td>
<td style="text-align: left;">Lists all attributes that are associated
with an object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_list_object_children/"> list_object_children </a></td>
<td style="text-align: left;">Returns a paginated list of child objects
that are associated with a given object</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_list_object_parent_paths/"> list_object_parent_paths </a></td>
<td style="text-align: left;">Retrieves all available parent paths for
any object type such as node, leaf node, policy node, and index node
objects</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_list_object_parents/"> list_object_parents </a></td>
<td style="text-align: left;">Lists parent objects that are associated
with a given object in pagination fashion</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_list_object_policies/"> list_object_policies </a></td>
<td style="text-align: left;">Returns policies attached to an object in
pagination fashion</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_list_outgoing_typed_links/"> list_outgoing_typed_links </a></td>
<td style="text-align: left;">Returns a paginated list of all the
outgoing TypedLinkSpecifier information for an object</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_list_policy_attachments/"> list_policy_attachments </a></td>
<td style="text-align: left;">Returns all of the ObjectIdentifiers to
which a given policy is attached</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_list_published_schema_arns/"> list_published_schema_arns </a></td>
<td style="text-align: left;">Lists the major version families of each
published schema</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns tags for a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_list_typed_link_facet_attributes/"> list_typed_link_facet_attributes </a></td>
<td style="text-align: left;">Returns a paginated list of all attribute
definitions for a particular TypedLinkFacet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_list_typed_link_facet_names/"> list_typed_link_facet_names </a></td>
<td style="text-align: left;">Returns a paginated list of TypedLink
facet names for a particular schema</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_lookup_policy/"> lookup_policy </a></td>
<td style="text-align: left;">Lists all policies from the root of the
Directory to the object specified</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_publish_schema/"> publish_schema </a></td>
<td style="text-align: left;">Publishes a development schema with a
major version and a recommended minor version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_put_schema_from_json/"> put_schema_from_json </a></td>
<td style="text-align: left;">Allows a schema to be updated using JSON
upload</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_remove_facet_from_object/"> remove_facet_from_object </a></td>
<td style="text-align: left;">Removes the specified facet from the
specified object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">An API operation for adding tags to a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">An API operation for removing tags from a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_update_facet/"> update_facet </a></td>
<td style="text-align: left;">Does the following:</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_update_link_attributes/"> update_link_attributes </a></td>
<td style="text-align: left;">Updates a given typed link’s
attributes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_update_object_attributes/"> update_object_attributes </a></td>
<td style="text-align: left;">Updates a given object's attributes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_update_schema/"> update_schema </a></td>
<td style="text-align: left;">Updates the schema name with a new
name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_update_typed_link_facet/"> update_typed_link_facet </a></td>
<td style="text-align: left;">Updates a TypedLinkFacet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../clouddirectory_upgrade_applied_schema/"> upgrade_applied_schema </a></td>
<td style="text-align: left;">Upgrades a single directory in-place using
the PublishedSchemaArn with schema updates found in MinorVersion</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../clouddirectory_upgrade_published_schema/"> upgrade_published_schema </a></td>
<td style="text-align: left;">Upgrades a published schema under a new
minor version revision using the current contents of
DevelopmentSchemaArn</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- clouddirectory()
    svc$add_facet_to_object(
      Foo = 123
    )

    ## End(Not run)
