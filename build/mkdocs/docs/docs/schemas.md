<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Schemas

### Description

Amazon EventBridge Schema Registry

### Usage

    schemas(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="schemas_:_config">config</code></td>
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

    svc <- schemas(
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
<td style="text-align: left;"><a href="../schemas_create_discoverer/"> create_discoverer </a></td>
<td style="text-align: left;">Creates a discoverer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_create_registry/"> create_registry </a></td>
<td style="text-align: left;">Creates a registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_create_schema/"> create_schema </a></td>
<td style="text-align: left;">Creates a schema definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_delete_discoverer/"> delete_discoverer </a></td>
<td style="text-align: left;">Deletes a discoverer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_delete_registry/"> delete_registry </a></td>
<td style="text-align: left;">Deletes a Registry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Delete the resource-based policy attached
to the specified registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_delete_schema/"> delete_schema </a></td>
<td style="text-align: left;">Delete a schema definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_delete_schema_version/"> delete_schema_version </a></td>
<td style="text-align: left;">Delete the schema version definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_describe_code_binding/"> describe_code_binding </a></td>
<td style="text-align: left;">Describe the code binding URI</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_describe_discoverer/"> describe_discoverer </a></td>
<td style="text-align: left;">Describes the discoverer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_describe_registry/"> describe_registry </a></td>
<td style="text-align: left;">Describes the registry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_describe_schema/"> describe_schema </a></td>
<td style="text-align: left;">Retrieve the schema definition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_export_schema/"> export_schema </a></td>
<td style="text-align: left;">Export schema</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_get_code_binding_source/"> get_code_binding_source </a></td>
<td style="text-align: left;">Get the code binding source URI</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_get_discovered_schema/"> get_discovered_schema </a></td>
<td style="text-align: left;">Get the discovered schema that was
generated based on sampled events</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_get_resource_policy/"> get_resource_policy </a></td>
<td style="text-align: left;">Retrieves the resource-based policy
attached to a given registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_list_discoverers/"> list_discoverers </a></td>
<td style="text-align: left;">List the discoverers</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_list_registries/"> list_registries </a></td>
<td style="text-align: left;">List the registries</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_list_schemas/"> list_schemas </a></td>
<td style="text-align: left;">List the schemas</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_list_schema_versions/"> list_schema_versions </a></td>
<td style="text-align: left;">Provides a list of the schema versions and
related information</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Get tags for resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_put_code_binding/"> put_code_binding </a></td>
<td style="text-align: left;">Put code binding URI</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">The name of the policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_search_schemas/"> search_schemas </a></td>
<td style="text-align: left;">Search the schemas</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_start_discoverer/"> start_discoverer </a></td>
<td style="text-align: left;">Starts the discoverer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_stop_discoverer/"> stop_discoverer </a></td>
<td style="text-align: left;">Stops the discoverer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Add tags to a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_update_discoverer/"> update_discoverer </a></td>
<td style="text-align: left;">Updates the discoverer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../schemas_update_registry/"> update_registry </a></td>
<td style="text-align: left;">Updates a registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../schemas_update_schema/"> update_schema </a></td>
<td style="text-align: left;">Updates the schema definition</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- schemas()
    svc$create_discoverer(
      Foo = 123
    )

    ## End(Not run)
