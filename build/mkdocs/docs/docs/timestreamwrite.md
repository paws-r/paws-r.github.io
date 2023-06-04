<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Timestream Write

### Description

Amazon Timestream is a fast, scalable, fully managed time-series
database service that makes it easy to store and analyze trillions of
time-series data points per day. With Timestream, you can easily store
and analyze IoT sensor data to derive insights from your IoT
applications. You can analyze industrial telemetry to streamline
equipment management and maintenance. You can also store and analyze log
data and metrics to improve the performance and availability of your
applications.

Timestream is built from the ground up to effectively ingest, process,
and store time-series data. It organizes data to optimize query
processing. It automatically scales based on the volume of data ingested
and on the query volume to ensure you receive optimal performance while
inserting and querying data. As your data grows over time, Timestream’s
adaptive query processing engine spans across storage tiers to provide
fast analysis while reducing costs.

### Usage

    timestreamwrite(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="timestreamwrite_:_config">config</code></td>
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

    svc <- timestreamwrite(
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
<td style="text-align: left;"><a href="../timestreamwrite_create_batch_load_task/"> create_batch_load_task </a></td>
<td style="text-align: left;">Creates a new Timestream batch load
task</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamwrite_create_database/"> create_database </a></td>
<td style="text-align: left;">Creates a new Timestream database</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamwrite_create_table/"> create_table </a></td>
<td style="text-align: left;">Adds a new table to an existing database
in your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamwrite_delete_database/"> delete_database </a></td>
<td style="text-align: left;">Deletes a given Timestream database</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamwrite_delete_table/"> delete_table </a></td>
<td style="text-align: left;">Deletes a given Timestream table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamwrite_describe_batch_load_task/"> describe_batch_load_task </a></td>
<td style="text-align: left;">Returns information about the batch load
task, including configurations, mappings, progress, and other
details</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamwrite_describe_database/"> describe_database </a></td>
<td style="text-align: left;">Returns information about the database,
including the database name, time that the database was created, and the
total number of tables found within the database</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamwrite_describe_endpoints/"> describe_endpoints </a></td>
<td style="text-align: left;">Returns a list of available endpoints to
make Timestream API calls against</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamwrite_describe_table/"> describe_table </a></td>
<td style="text-align: left;">Returns information about the table,
including the table name, database name, retention duration of the
memory store and the magnetic store</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamwrite_list_batch_load_tasks/"> list_batch_load_tasks </a></td>
<td style="text-align: left;">Provides a list of batch load tasks, along
with the name, status, when the task is resumable until, and other
details</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamwrite_list_databases/"> list_databases </a></td>
<td style="text-align: left;">Returns a list of your Timestream
databases</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamwrite_list_tables/"> list_tables </a></td>
<td style="text-align: left;">Provides a list of tables, along with the
name, status, and retention properties of each table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamwrite_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all tags on a Timestream
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamwrite_resume_batch_load_task/"> resume_batch_load_task </a></td>
<td style="text-align: left;">Resume batch load task</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamwrite_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates a set of tags with a Timestream
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamwrite_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the association of tags from a
Timestream resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamwrite_update_database/"> update_database </a></td>
<td style="text-align: left;">Modifies the KMS key for an existing
database</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamwrite_update_table/"> update_table </a></td>
<td style="text-align: left;">Modifies the retention duration of the
memory store and magnetic store for your Timestream table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamwrite_write_records/"> write_records </a></td>
<td style="text-align: left;">Enables you to write your time-series data
into Timestream</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- timestreamwrite()
    svc$create_batch_load_task(
      Foo = 123
    )

    ## End(Not run)
