<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon DynamoDB Accelerator (DAX)

### Description

DAX is a managed caching service engineered for Amazon DynamoDB. DAX
dramatically speeds up database reads by caching frequently-accessed
data from DynamoDB, so applications can access that data with
sub-millisecond latency. You can create a DAX cluster easily, using the
AWS Management Console. With a few simple modifications to your code,
your application can begin taking advantage of the DAX cluster and
realize significant improvements in read performance.

### Usage

    dax(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dax_:_config">config</code></td>
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

    svc <- dax(
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
<td style="text-align: left;"><a href="../dax_create_cluster/"> create_cluster </a></td>
<td style="text-align: left;">Creates a DAX cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dax_create_parameter_group/"> create_parameter_group </a></td>
<td style="text-align: left;">Creates a new parameter group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dax_create_subnet_group/"> create_subnet_group </a></td>
<td style="text-align: left;">Creates a new subnet group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dax_decrease_replication_factor/"> decrease_replication_factor </a></td>
<td style="text-align: left;">Removes one or more nodes from a DAX
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dax_delete_cluster/"> delete_cluster </a></td>
<td style="text-align: left;">Deletes a previously provisioned DAX
cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dax_delete_parameter_group/"> delete_parameter_group </a></td>
<td style="text-align: left;">Deletes the specified parameter group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dax_delete_subnet_group/"> delete_subnet_group </a></td>
<td style="text-align: left;">Deletes a subnet group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dax_describe_clusters/"> describe_clusters </a></td>
<td style="text-align: left;">Returns information about all provisioned
DAX clusters if no cluster identifier is specified, or about a specific
DAX cluster if a cluster identifier is supplied</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dax_describe_default_parameters/"> describe_default_parameters </a></td>
<td style="text-align: left;">Returns the default system parameter
information for the DAX caching software</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dax_describe_events/"> describe_events </a></td>
<td style="text-align: left;">Returns events related to DAX clusters and
parameter groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dax_describe_parameter_groups/"> describe_parameter_groups </a></td>
<td style="text-align: left;">Returns a list of parameter group
descriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dax_describe_parameters/"> describe_parameters </a></td>
<td style="text-align: left;">Returns the detailed parameter list for a
particular parameter group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dax_describe_subnet_groups/"> describe_subnet_groups </a></td>
<td style="text-align: left;">Returns a list of subnet group
descriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dax_increase_replication_factor/"> increase_replication_factor </a></td>
<td style="text-align: left;">Adds one or more nodes to a DAX
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dax_list_tags/"> list_tags </a></td>
<td style="text-align: left;">List all of the tags for a DAX
cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dax_reboot_node/"> reboot_node </a></td>
<td style="text-align: left;">Reboots a single node of a DAX
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dax_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates a set of tags with a DAX
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dax_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the association of tags from a DAX
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dax_update_cluster/"> update_cluster </a></td>
<td style="text-align: left;">Modifies the settings for a DAX
cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dax_update_parameter_group/"> update_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a parameter
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dax_update_subnet_group/"> update_subnet_group </a></td>
<td style="text-align: left;">Modifies an existing subnet group</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- dax()
    svc$create_cluster(
      Foo = 123
    )

    ## End(Not run)
