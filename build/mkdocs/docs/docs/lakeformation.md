<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Lake Formation

### Description

Lake Formation

Defines the public endpoint for the Lake Formation service.

### Usage

    lakeformation(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lakeformation_:_config">config</code></td>
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

    svc <- lakeformation(
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
<td style="text-align: left;"><a href="../lakeformation_add_lf_tags_to_resource/"> add_lf_tags_to_resource </a></td>
<td style="text-align: left;">Attaches one or more LF-tags to an
existing resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_assume_decorated_role_with_saml/"> assume_decorated_role_with_saml </a></td>
<td style="text-align: left;">Allows a caller to assume an IAM role
decorated as the SAML user specified in the SAML assertion included in
the request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_batch_grant_permissions/"> batch_grant_permissions </a></td>
<td style="text-align: left;">Batch operation to grant permissions to
the principal</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_batch_revoke_permissions/"> batch_revoke_permissions </a></td>
<td style="text-align: left;">Batch operation to revoke permissions from
the principal</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_cancel_transaction/"> cancel_transaction </a></td>
<td style="text-align: left;">Attempts to cancel the specified
transaction</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_commit_transaction/"> commit_transaction </a></td>
<td style="text-align: left;">Attempts to commit the specified
transaction</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_create_data_cells_filter/"> create_data_cells_filter </a></td>
<td style="text-align: left;">Creates a data cell filter to allow one to
grant access to certain columns on certain rows</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_create_lf_tag/"> create_lf_tag </a></td>
<td style="text-align: left;">Creates an LF-tag with the specified name
and values</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_delete_data_cells_filter/"> delete_data_cells_filter </a></td>
<td style="text-align: left;">Deletes a data cell filter</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_delete_lf_tag/"> delete_lf_tag </a></td>
<td style="text-align: left;">Deletes the specified LF-tag given a key
name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_delete_objects_on_cancel/"> delete_objects_on_cancel </a></td>
<td style="text-align: left;">For a specific governed table, provides a
list of Amazon S3 objects that will be written during the current
transaction and that can be automatically deleted if the transaction is
canceled</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_deregister_resource/"> deregister_resource </a></td>
<td style="text-align: left;">Deregisters the resource as managed by the
Data Catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_describe_resource/"> describe_resource </a></td>
<td style="text-align: left;">Retrieves the current data access role for
the given resource registered in Lake Formation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_describe_transaction/"> describe_transaction </a></td>
<td style="text-align: left;">Returns the details of a single
transaction</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_extend_transaction/"> extend_transaction </a></td>
<td style="text-align: left;">Indicates to the service that the
specified transaction is still active and should not be treated as idle
and aborted</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_get_data_cells_filter/"> get_data_cells_filter </a></td>
<td style="text-align: left;">Returns a data cells filter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_get_data_lake_settings/"> get_data_lake_settings </a></td>
<td style="text-align: left;">Retrieves the list of the data lake
administrators of a Lake Formation-managed data lake</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_get_effective_permissions_for_path/"> get_effective_permissions_for_path </a></td>
<td style="text-align: left;">Returns the Lake Formation permissions for
a specified table or database resource located at a path in Amazon
S3</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_get_lf_tag/"> get_lf_tag </a></td>
<td style="text-align: left;">Returns an LF-tag definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_get_query_state/"> get_query_state </a></td>
<td style="text-align: left;">Returns the state of a query previously
submitted</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_get_query_statistics/"> get_query_statistics </a></td>
<td style="text-align: left;">Retrieves statistics on the planning and
execution of a query</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_get_resource_lf_tags/"> get_resource_lf_tags </a></td>
<td style="text-align: left;">Returns the LF-tags applied to a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_get_table_objects/"> get_table_objects </a></td>
<td style="text-align: left;">Returns the set of Amazon S3 objects that
make up the specified governed table</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../lakeformation_get_temporary_glue_partition_credentials/"> get_temporary_glue_partition_credentials </a></td>
<td style="text-align: left;">This API is identical to
GetTemporaryTableCredentials except that this is used when the target
Data Catalog resource is of type Partition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_get_temporary_glue_table_credentials/"> get_temporary_glue_table_credentials </a></td>
<td style="text-align: left;">Allows a caller in a secure environment to
assume a role with permission to access Amazon S3</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_get_work_unit_results/"> get_work_unit_results </a></td>
<td style="text-align: left;">Returns the work units resulting from the
query</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_get_work_units/"> get_work_units </a></td>
<td style="text-align: left;">Retrieves the work units generated by the
StartQueryPlanning operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_grant_permissions/"> grant_permissions </a></td>
<td style="text-align: left;">Grants permissions to the principal to
access metadata in the Data Catalog and data organized in underlying
data storage such as Amazon S3</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_list_data_cells_filter/"> list_data_cells_filter </a></td>
<td style="text-align: left;">Lists all the data cell filters on a
table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_list_lf_tags/"> list_lf_tags </a></td>
<td style="text-align: left;">Lists LF-tags that the requester has
permission to view</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_list_permissions/"> list_permissions </a></td>
<td style="text-align: left;">Returns a list of the principal
permissions on the resource, filtered by the permissions of the
caller</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_list_resources/"> list_resources </a></td>
<td style="text-align: left;">Lists the resources registered to be
managed by the Data Catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_list_table_storage_optimizers/"> list_table_storage_optimizers </a></td>
<td style="text-align: left;">Returns the configuration of all storage
optimizers associated with a specified table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_list_transactions/"> list_transactions </a></td>
<td style="text-align: left;">Returns metadata about transactions and
their status</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_put_data_lake_settings/"> put_data_lake_settings </a></td>
<td style="text-align: left;">Sets the list of data lake administrators
who have admin privileges on all resources managed by Lake
Formation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_register_resource/"> register_resource </a></td>
<td style="text-align: left;">Registers the resource as managed by the
Data Catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_remove_lf_tags_from_resource/"> remove_lf_tags_from_resource </a></td>
<td style="text-align: left;">Removes an LF-tag from the resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_revoke_permissions/"> revoke_permissions </a></td>
<td style="text-align: left;">Revokes permissions to the principal to
access metadata in the Data Catalog and data organized in underlying
data storage such as Amazon S3</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_search_databases_by_lf_tags/"> search_databases_by_lf_tags </a></td>
<td style="text-align: left;">This operation allows a search on DATABASE
resources by TagCondition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_search_tables_by_lf_tags/"> search_tables_by_lf_tags </a></td>
<td style="text-align: left;">This operation allows a search on TABLE
resources by LFTags</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_start_query_planning/"> start_query_planning </a></td>
<td style="text-align: left;">Submits a request to process a query
statement</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_start_transaction/"> start_transaction </a></td>
<td style="text-align: left;">Starts a new transaction and returns its
transaction ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_update_data_cells_filter/"> update_data_cells_filter </a></td>
<td style="text-align: left;">Updates a data cell filter</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_update_lf_tag/"> update_lf_tag </a></td>
<td style="text-align: left;">Updates the list of possible values for
the specified LF-tag key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_update_resource/"> update_resource </a></td>
<td style="text-align: left;">Updates the data access role used for
vending access to the given (registered) resource in Lake Formation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lakeformation_update_table_objects/"> update_table_objects </a></td>
<td style="text-align: left;">Updates the manifest of Amazon S3 objects
that make up the specified governed table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lakeformation_update_table_storage_optimizer/"> update_table_storage_optimizer </a></td>
<td style="text-align: left;">Updates the configuration of the storage
optimizers for a table</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- lakeformation()
    svc$add_lf_tags_to_resource(
      Foo = 123
    )

    ## End(Not run)
