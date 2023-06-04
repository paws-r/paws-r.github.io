<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Redshift Serverless

### Description

This is an interface reference for Amazon Redshift Serverless. It
contains documentation for one of the programming or command line
interfaces you can use to manage Amazon Redshift Serverless.

Amazon Redshift Serverless automatically provisions data warehouse
capacity and intelligently scales the underlying resources based on
workload demands. Amazon Redshift Serverless adjusts capacity in seconds
to deliver consistently high performance and simplified operations for
even the most demanding and volatile workloads. Amazon Redshift
Serverless lets you focus on using your data to acquire new insights for
your business and customers.

To learn more about Amazon Redshift Serverless, see [What is Amazon
Redshift
Serverless](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-whatis.html).

### Usage

    redshiftserverless(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="redshiftserverless_:_config">config</code></td>
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

    svc <- redshiftserverless(
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
<td style="text-align: left;"><a href="../redshiftserverless_convert_recovery_point_to_snapshot/"> convert_recovery_point_to_snapshot </a></td>
<td style="text-align: left;">Converts a recovery point to a
snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_create_endpoint_access/"> create_endpoint_access </a></td>
<td style="text-align: left;">Creates an Amazon Redshift Serverless
managed VPC endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_create_namespace/"> create_namespace </a></td>
<td style="text-align: left;">Creates a namespace in Amazon Redshift
Serverless</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_create_snapshot/"> create_snapshot </a></td>
<td style="text-align: left;">Creates a snapshot of all databases in a
namespace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_create_usage_limit/"> create_usage_limit </a></td>
<td style="text-align: left;">Creates a usage limit for a specified
Amazon Redshift Serverless usage type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_create_workgroup/"> create_workgroup </a></td>
<td style="text-align: left;">Creates an workgroup in Amazon Redshift
Serverless</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_delete_endpoint_access/"> delete_endpoint_access </a></td>
<td style="text-align: left;">Deletes an Amazon Redshift Serverless
managed VPC endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_delete_namespace/"> delete_namespace </a></td>
<td style="text-align: left;">Deletes a namespace from Amazon Redshift
Serverless</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Deletes the specified resource policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_delete_snapshot/"> delete_snapshot </a></td>
<td style="text-align: left;">Deletes a snapshot from Amazon Redshift
Serverless</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_delete_usage_limit/"> delete_usage_limit </a></td>
<td style="text-align: left;">Deletes a usage limit from Amazon Redshift
Serverless</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_delete_workgroup/"> delete_workgroup </a></td>
<td style="text-align: left;">Deletes a workgroup</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_get_credentials/"> get_credentials </a></td>
<td style="text-align: left;">Returns a database user name and temporary
password with temporary authorization to log in to Amazon Redshift
Serverless</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_get_endpoint_access/"> get_endpoint_access </a></td>
<td style="text-align: left;">Returns information, such as the name,
about a VPC endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_get_namespace/"> get_namespace </a></td>
<td style="text-align: left;">Returns information about a namespace in
Amazon Redshift Serverless</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_get_recovery_point/"> get_recovery_point </a></td>
<td style="text-align: left;">Returns information about a recovery
point</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_get_resource_policy/"> get_resource_policy </a></td>
<td style="text-align: left;">Returns a resource policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_get_snapshot/"> get_snapshot </a></td>
<td style="text-align: left;">Returns information about a specific
snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_get_table_restore_status/"> get_table_restore_status </a></td>
<td style="text-align: left;">Returns information about a
TableRestoreStatus object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_get_usage_limit/"> get_usage_limit </a></td>
<td style="text-align: left;">Returns information about a usage
limit</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_get_workgroup/"> get_workgroup </a></td>
<td style="text-align: left;">Returns information about a specific
workgroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_list_endpoint_access/"> list_endpoint_access </a></td>
<td style="text-align: left;">Returns an array of EndpointAccess objects
and relevant information</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_list_namespaces/"> list_namespaces </a></td>
<td style="text-align: left;">Returns information about a list of
specified namespaces</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_list_recovery_points/"> list_recovery_points </a></td>
<td style="text-align: left;">Returns an array of recovery points</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_list_snapshots/"> list_snapshots </a></td>
<td style="text-align: left;">Returns a list of snapshots</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_list_table_restore_status/"> list_table_restore_status </a></td>
<td style="text-align: left;">Returns information about an array of
TableRestoreStatus objects</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags assigned to a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_list_usage_limits/"> list_usage_limits </a></td>
<td style="text-align: left;">Lists all usage limits within Amazon
Redshift Serverless</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_list_workgroups/"> list_workgroups </a></td>
<td style="text-align: left;">Returns information about a list of
specified workgroups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">Creates or updates a resource policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_restore_from_recovery_point/"> restore_from_recovery_point </a></td>
<td style="text-align: left;">Restore the data from a recovery
point</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_restore_from_snapshot/"> restore_from_snapshot </a></td>
<td style="text-align: left;">Restores a namespace from a snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_restore_table_from_snapshot/"> restore_table_from_snapshot </a></td>
<td style="text-align: left;">Restores a table from a snapshot to your
Amazon Redshift Serverless instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns one or more tags to a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a tag or set of tags from a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_update_endpoint_access/"> update_endpoint_access </a></td>
<td style="text-align: left;">Updates an Amazon Redshift Serverless
managed endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_update_namespace/"> update_namespace </a></td>
<td style="text-align: left;">Updates a namespace with the specified
settings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_update_snapshot/"> update_snapshot </a></td>
<td style="text-align: left;">Updates a snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftserverless_update_usage_limit/"> update_usage_limit </a></td>
<td style="text-align: left;">Update a usage limit in Amazon Redshift
Serverless</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftserverless_update_workgroup/"> update_workgroup </a></td>
<td style="text-align: left;">Updates a workgroup with the specified
configuration settings</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- redshiftserverless()
    svc$convert_recovery_point_to_snapshot(
      Foo = 123
    )

    ## End(Not run)
