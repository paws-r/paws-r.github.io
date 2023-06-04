<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>keyspaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Keyspaces

### Description

Amazon Keyspaces (for Apache Cassandra) is a scalable, highly available,
and managed Apache Cassandra-compatible database service. Amazon
Keyspaces makes it easy to migrate, run, and scale Cassandra workloads
in the Amazon Web Services Cloud. With just a few clicks on the Amazon
Web Services Management Console or a few lines of code, you can create
keyspaces and tables in Amazon Keyspaces, without deploying any
infrastructure or installing software.

In addition to supporting Cassandra Query Language (CQL) requests via
open-source Cassandra drivers, Amazon Keyspaces supports data definition
language (DDL) operations to manage keyspaces and tables using the
Amazon Web Services SDK and CLI, as well as infrastructure as code (IaC)
services and tools such as CloudFormation and Terraform. This API
reference describes the supported DDL operations in detail.

For the list of all supported CQL APIs, see [Supported Cassandra APIs,
operations, and data types in Amazon
Keyspaces](https://docs.aws.amazon.com/keyspaces/latest/devguide/cassandra-apis.html)
in the *Amazon Keyspaces Developer Guide*.

To learn how Amazon Keyspaces API actions are recorded with CloudTrail,
see [Amazon Keyspaces information in
CloudTrail](https://docs.aws.amazon.com/keyspaces/latest/devguide/logging-using-cloudtrail.html#service-name-info-in-cloudtrail)
in the *Amazon Keyspaces Developer Guide*.

For more information about Amazon Web Services APIs, for example how to
implement retry logic or how to sign Amazon Web Services API requests,
see [Amazon Web Services
APIs](https://docs.aws.amazon.com/general/latest/gr/) in the *General
Reference*.

### Usage

    keyspaces(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="keyspaces_:_config">config</code></td>
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

    svc <- keyspaces(
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
<td style="text-align: left;"><a href="../keyspaces_create_keyspace/"> create_keyspace </a></td>
<td style="text-align: left;">The CreateKeyspace operation adds a new
keyspace to your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../keyspaces_create_table/"> create_table </a></td>
<td style="text-align: left;">The CreateTable operation adds a new table
to the specified keyspace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../keyspaces_delete_keyspace/"> delete_keyspace </a></td>
<td style="text-align: left;">The DeleteKeyspace operation deletes a
keyspace and all of its tables</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../keyspaces_delete_table/"> delete_table </a></td>
<td style="text-align: left;">The DeleteTable operation deletes a table
and all of its data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../keyspaces_get_keyspace/"> get_keyspace </a></td>
<td style="text-align: left;">Returns the name and the Amazon Resource
Name (ARN) of the specified table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../keyspaces_get_table/"> get_table </a></td>
<td style="text-align: left;">Returns information about the table,
including the table's name and current status, the keyspace name,
configuration settings, and metadata</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../keyspaces_list_keyspaces/"> list_keyspaces </a></td>
<td style="text-align: left;">Returns a list of keyspaces</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../keyspaces_list_tables/"> list_tables </a></td>
<td style="text-align: left;">Returns a list of tables for a specified
keyspace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../keyspaces_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of all tags associated with
the specified Amazon Keyspaces resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../keyspaces_restore_table/"> restore_table </a></td>
<td style="text-align: left;">Restores the specified table to the
specified point in time within the earliest_restorable_timestamp and the
current time</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../keyspaces_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates a set of tags with a Amazon
Keyspaces resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../keyspaces_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the association of tags from a
Amazon Keyspaces resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../keyspaces_update_table/"> update_table </a></td>
<td style="text-align: left;">Adds new columns to the table or updates
one of the table's settings, for example capacity mode, encryption,
point-in-time recovery, or ttl settings</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- keyspaces()
    svc$create_keyspace(
      Foo = 123
    )

    ## End(Not run)
