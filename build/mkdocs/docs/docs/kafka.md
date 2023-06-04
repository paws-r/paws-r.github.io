<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Managed Streaming for Kafka

### Description

The operations for managing an Amazon MSK cluster.

### Usage

    kafka(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kafka_:_config">config</code></td>
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

    svc <- kafka(
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
<td style="text-align: left;"><a href="../kafka_batch_associate_scram_secret/"> batch_associate_scram_secret </a></td>
<td style="text-align: left;">Associates one or more Scram Secrets with
an Amazon MSK cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_batch_disassociate_scram_secret/"> batch_disassociate_scram_secret </a></td>
<td style="text-align: left;">Disassociates one or more Scram Secrets
from an Amazon MSK cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_create_cluster/"> create_cluster </a></td>
<td style="text-align: left;">Creates a new MSK cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_create_cluster_v2/"> create_cluster_v2 </a></td>
<td style="text-align: left;">Creates a new MSK cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_create_configuration/"> create_configuration </a></td>
<td style="text-align: left;">Creates a new MSK configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_create_vpc_connection/"> create_vpc_connection </a></td>
<td style="text-align: left;">Creates a new MSK VPC connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_delete_cluster/"> delete_cluster </a></td>
<td style="text-align: left;">Deletes the MSK cluster specified by the
Amazon Resource Name (ARN) in the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_delete_cluster_policy/"> delete_cluster_policy </a></td>
<td style="text-align: left;">Deletes the MSK cluster policy specified
by the Amazon Resource Name (ARN) in the request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_delete_configuration/"> delete_configuration </a></td>
<td style="text-align: left;">Deletes an MSK Configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_delete_vpc_connection/"> delete_vpc_connection </a></td>
<td style="text-align: left;">Deletes a MSK VPC connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_describe_cluster/"> describe_cluster </a></td>
<td style="text-align: left;">Returns a description of the MSK cluster
whose Amazon Resource Name (ARN) is specified in the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_describe_cluster_operation/"> describe_cluster_operation </a></td>
<td style="text-align: left;">Returns a description of the cluster
operation specified by the ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_describe_cluster_v2/"> describe_cluster_v2 </a></td>
<td style="text-align: left;">Returns a description of the MSK cluster
whose Amazon Resource Name (ARN) is specified in the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_describe_configuration/"> describe_configuration </a></td>
<td style="text-align: left;">Returns a description of this MSK
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_describe_configuration_revision/"> describe_configuration_revision </a></td>
<td style="text-align: left;">Returns a description of this revision of
the configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_describe_vpc_connection/"> describe_vpc_connection </a></td>
<td style="text-align: left;">Returns a description of this MSK VPC
connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_get_bootstrap_brokers/"> get_bootstrap_brokers </a></td>
<td style="text-align: left;">A list of brokers that a client
application can use to bootstrap</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_get_cluster_policy/"> get_cluster_policy </a></td>
<td style="text-align: left;">Get the MSK cluster policy specified by
the Amazon Resource Name (ARN) in the request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_get_compatible_kafka_versions/"> get_compatible_kafka_versions </a></td>
<td style="text-align: left;">Gets the Apache Kafka versions to which
you can update the MSK cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_list_client_vpc_connections/"> list_client_vpc_connections </a></td>
<td style="text-align: left;">Returns a list of all the VPC connections
in this Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_list_cluster_operations/"> list_cluster_operations </a></td>
<td style="text-align: left;">Returns a list of all the operations that
have been performed on the specified MSK cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_list_clusters/"> list_clusters </a></td>
<td style="text-align: left;">Returns a list of all the MSK clusters in
the current Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_list_clusters_v2/"> list_clusters_v2 </a></td>
<td style="text-align: left;">Returns a list of all the MSK clusters in
the current Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_list_configuration_revisions/"> list_configuration_revisions </a></td>
<td style="text-align: left;">Returns a list of all the MSK
configurations in this Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_list_configurations/"> list_configurations </a></td>
<td style="text-align: left;">Returns a list of all the MSK
configurations in this Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_list_kafka_versions/"> list_kafka_versions </a></td>
<td style="text-align: left;">Returns a list of Apache Kafka
versions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_list_nodes/"> list_nodes </a></td>
<td style="text-align: left;">Returns a list of the broker nodes in the
cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_list_scram_secrets/"> list_scram_secrets </a></td>
<td style="text-align: left;">Returns a list of the Scram Secrets
associated with an Amazon MSK cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of the tags associated with
the specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_list_vpc_connections/"> list_vpc_connections </a></td>
<td style="text-align: left;">Returns a list of all the VPC connections
in this Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_put_cluster_policy/"> put_cluster_policy </a></td>
<td style="text-align: left;">Creates or updates the MSK cluster policy
specified by the cluster Amazon Resource Name (ARN) in the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_reboot_broker/"> reboot_broker </a></td>
<td style="text-align: left;">Reboots brokers</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_reject_client_vpc_connection/"> reject_client_vpc_connection </a></td>
<td style="text-align: left;">Returns empty response</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds tags to the specified MSK
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the tags associated with the keys
that are provided in the query</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_update_broker_count/"> update_broker_count </a></td>
<td style="text-align: left;">Updates the number of broker nodes in the
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_update_broker_storage/"> update_broker_storage </a></td>
<td style="text-align: left;">Updates the EBS storage associated with
MSK brokers</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_update_broker_type/"> update_broker_type </a></td>
<td style="text-align: left;">Updates EC2 instance type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_update_cluster_configuration/"> update_cluster_configuration </a></td>
<td style="text-align: left;">Updates the cluster with the configuration
that is specified in the request body</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_update_cluster_kafka_version/"> update_cluster_kafka_version </a></td>
<td style="text-align: left;">Updates the Apache Kafka version for the
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_update_configuration/"> update_configuration </a></td>
<td style="text-align: left;">Updates an MSK configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_update_connectivity/"> update_connectivity </a></td>
<td style="text-align: left;">Updates the cluster's connectivity
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_update_monitoring/"> update_monitoring </a></td>
<td style="text-align: left;">Updates the monitoring settings for the
cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kafka_update_security/"> update_security </a></td>
<td style="text-align: left;">Updates the security settings for the
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kafka_update_storage/"> update_storage </a></td>
<td style="text-align: left;">Updates cluster broker volume size (or)
sets cluster storage mode to TIERED</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- kafka()
    svc$batch_associate_scram_secret(
      Foo = 123
    )

    ## End(Not run)
