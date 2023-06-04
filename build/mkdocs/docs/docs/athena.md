<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Athena

### Description

Amazon Athena is an interactive query service that lets you use standard
SQL to analyze data directly in Amazon S3. You can point Athena at your
data in Amazon S3 and run ad-hoc queries and get results in seconds.
Athena is serverless, so there is no infrastructure to set up or manage.
You pay only for the queries you run. Athena scales
automatically—executing queries in parallel—so results are fast, even
with large datasets and complex queries. For more information, see [What
is Amazon
Athena](https://docs.aws.amazon.com/athena/latest/ug/what-is.html) in
the *Amazon Athena User Guide*.

If you connect to Athena using the JDBC driver, use version 1.1.0 of the
driver or later with the Amazon Athena API. Earlier version drivers do
not support the API. For more information and to download the driver,
see [Accessing Amazon Athena with
JDBC](https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html).

For code samples using the Amazon Web Services SDK for Java, see
[Examples and Code
Samples](https://docs.aws.amazon.com/athena/latest/ug/code-samples.html)
in the *Amazon Athena User Guide*.

### Usage

    athena(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="athena_:_config">config</code></td>
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

    svc <- athena(
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
<td style="text-align: left;"><a href="../athena_batch_get_named_query/"> batch_get_named_query </a></td>
<td style="text-align: left;">Returns the details of a single named
query or a list of up to 50 queries, which you provide as an array of
query ID strings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_batch_get_prepared_statement/"> batch_get_prepared_statement </a></td>
<td style="text-align: left;">Returns the details of a single prepared
statement or a list of up to 256 prepared statements for the array of
prepared statement names that you provide</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_batch_get_query_execution/"> batch_get_query_execution </a></td>
<td style="text-align: left;">Returns the details of a single query
execution or a list of up to 50 query executions, which you provide as
an array of query execution ID strings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_cancel_capacity_reservation/"> cancel_capacity_reservation </a></td>
<td style="text-align: left;">Cancels the capacity reservation with the
specified name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_create_capacity_reservation/"> create_capacity_reservation </a></td>
<td style="text-align: left;">Creates a capacity reservation with the
specified name and number of requested data processing units</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_create_data_catalog/"> create_data_catalog </a></td>
<td style="text-align: left;">Creates (registers) a data catalog with
the specified name and properties</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_create_named_query/"> create_named_query </a></td>
<td style="text-align: left;">Creates a named query in the specified
workgroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_create_notebook/"> create_notebook </a></td>
<td style="text-align: left;">Creates an empty ipynb file in the
specified Apache Spark enabled workgroup</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_create_prepared_statement/"> create_prepared_statement </a></td>
<td style="text-align: left;">Creates a prepared statement for use with
SQL queries in Athena</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_create_presigned_notebook_url/"> create_presigned_notebook_url </a></td>
<td style="text-align: left;">Gets an authentication token and the URL
at which the notebook can be accessed</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_create_work_group/"> create_work_group </a></td>
<td style="text-align: left;">Creates a workgroup with the specified
name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_delete_data_catalog/"> delete_data_catalog </a></td>
<td style="text-align: left;">Deletes a data catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_delete_named_query/"> delete_named_query </a></td>
<td style="text-align: left;">Deletes the named query if you have access
to the workgroup in which the query was saved</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_delete_notebook/"> delete_notebook </a></td>
<td style="text-align: left;">Deletes the specified notebook</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_delete_prepared_statement/"> delete_prepared_statement </a></td>
<td style="text-align: left;">Deletes the prepared statement with the
specified name from the specified workgroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_delete_work_group/"> delete_work_group </a></td>
<td style="text-align: left;">Deletes the workgroup with the specified
name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_export_notebook/"> export_notebook </a></td>
<td style="text-align: left;">Exports the specified notebook and its
metadata</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_get_calculation_execution/"> get_calculation_execution </a></td>
<td style="text-align: left;">Describes a previously submitted
calculation execution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_get_calculation_execution_code/"> get_calculation_execution_code </a></td>
<td style="text-align: left;">Retrieves the unencrypted code that was
executed for the calculation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_get_calculation_execution_status/"> get_calculation_execution_status </a></td>
<td style="text-align: left;">Gets the status of a current
calculation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_get_capacity_assignment_configuration/"> get_capacity_assignment_configuration </a></td>
<td style="text-align: left;">Gets the capacity assignment configuration
for a capacity reservation, if one exists</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_get_capacity_reservation/"> get_capacity_reservation </a></td>
<td style="text-align: left;">Returns information about the capacity
reservation with the specified name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_get_database/"> get_database </a></td>
<td style="text-align: left;">Returns a database object for the
specified database and data catalog</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_get_data_catalog/"> get_data_catalog </a></td>
<td style="text-align: left;">Returns the specified data catalog</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_get_named_query/"> get_named_query </a></td>
<td style="text-align: left;">Returns information about a single
query</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_get_notebook_metadata/"> get_notebook_metadata </a></td>
<td style="text-align: left;">Retrieves notebook metadata for the
specified notebook ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_get_prepared_statement/"> get_prepared_statement </a></td>
<td style="text-align: left;">Retrieves the prepared statement with the
specified name from the specified workgroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_get_query_execution/"> get_query_execution </a></td>
<td style="text-align: left;">Returns information about a single
execution of a query if you have access to the workgroup in which the
query ran</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_get_query_results/"> get_query_results </a></td>
<td style="text-align: left;">Streams the results of a single query
execution specified by QueryExecutionId from the Athena query results
location in Amazon S3</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_get_query_runtime_statistics/"> get_query_runtime_statistics </a></td>
<td style="text-align: left;">Returns query execution runtime statistics
related to a single execution of a query if you have access to the
workgroup in which the query ran</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_get_session/"> get_session </a></td>
<td style="text-align: left;">Gets the full details of a previously
created session, including the session status and configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_get_session_status/"> get_session_status </a></td>
<td style="text-align: left;">Gets the current status of a session</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_get_table_metadata/"> get_table_metadata </a></td>
<td style="text-align: left;">Returns table metadata for the specified
catalog, database, and table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_get_work_group/"> get_work_group </a></td>
<td style="text-align: left;">Returns information about the workgroup
with the specified name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_import_notebook/"> import_notebook </a></td>
<td style="text-align: left;">Imports a single ipynb file to a Spark
enabled workgroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_list_application_dpu_sizes/"> list_application_dpu_sizes </a></td>
<td style="text-align: left;">Returns the supported DPU sizes for the
supported application runtimes (for example, Athena notebook version
1)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_list_calculation_executions/"> list_calculation_executions </a></td>
<td style="text-align: left;">Lists the calculations that have been
submitted to a session in descending order</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_list_capacity_reservations/"> list_capacity_reservations </a></td>
<td style="text-align: left;">Lists the capacity reservations for the
current account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_list_databases/"> list_databases </a></td>
<td style="text-align: left;">Lists the databases in the specified data
catalog</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_list_data_catalogs/"> list_data_catalogs </a></td>
<td style="text-align: left;">Lists the data catalogs in the current
Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_list_engine_versions/"> list_engine_versions </a></td>
<td style="text-align: left;">Returns a list of engine versions that are
available to choose from, including the Auto option</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_list_executors/"> list_executors </a></td>
<td style="text-align: left;">Lists, in descending order, the executors
that joined a session</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_list_named_queries/"> list_named_queries </a></td>
<td style="text-align: left;">Provides a list of available query IDs
only for queries saved in the specified workgroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_list_notebook_metadata/"> list_notebook_metadata </a></td>
<td style="text-align: left;">Displays the notebook files for the
specified workgroup in paginated format</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_list_notebook_sessions/"> list_notebook_sessions </a></td>
<td style="text-align: left;">Lists, in descending order, the sessions
that have been created in a notebook that are in an active state like
CREATING, CREATED, IDLE or BUSY</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_list_prepared_statements/"> list_prepared_statements </a></td>
<td style="text-align: left;">Lists the prepared statements in the
specified workgroup</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_list_query_executions/"> list_query_executions </a></td>
<td style="text-align: left;">Provides a list of available query
execution IDs for the queries in the specified workgroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_list_sessions/"> list_sessions </a></td>
<td style="text-align: left;">Lists the sessions in a workgroup that are
in an active state like CREATING, CREATED, IDLE, or BUSY</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_list_table_metadata/"> list_table_metadata </a></td>
<td style="text-align: left;">Lists the metadata for the tables in the
specified data catalog database</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags associated with an Athena
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_list_work_groups/"> list_work_groups </a></td>
<td style="text-align: left;">Lists available workgroups for the
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_put_capacity_assignment_configuration/"> put_capacity_assignment_configuration </a></td>
<td style="text-align: left;">Puts a new capacity assignment
configuration for a specified capacity reservation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_start_calculation_execution/"> start_calculation_execution </a></td>
<td style="text-align: left;">Submits calculations for execution within
a session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_start_query_execution/"> start_query_execution </a></td>
<td style="text-align: left;">Runs the SQL query statements contained in
the Query</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_start_session/"> start_session </a></td>
<td style="text-align: left;">Creates a session for running calculations
within a workgroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_stop_calculation_execution/"> stop_calculation_execution </a></td>
<td style="text-align: left;">Requests the cancellation of a
calculation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_stop_query_execution/"> stop_query_execution </a></td>
<td style="text-align: left;">Stops a query execution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more tags to an Athena
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_terminate_session/"> terminate_session </a></td>
<td style="text-align: left;">Terminates an active session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from an Athena
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_update_capacity_reservation/"> update_capacity_reservation </a></td>
<td style="text-align: left;">Updates the number of requested data
processing units for the capacity reservation with the specified
name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_update_data_catalog/"> update_data_catalog </a></td>
<td style="text-align: left;">Updates the data catalog that has the
specified name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_update_named_query/"> update_named_query </a></td>
<td style="text-align: left;">Updates a NamedQuery object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_update_notebook/"> update_notebook </a></td>
<td style="text-align: left;">Updates the contents of a Spark
notebook</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_update_notebook_metadata/"> update_notebook_metadata </a></td>
<td style="text-align: left;">Updates the metadata for a notebook</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../athena_update_prepared_statement/"> update_prepared_statement </a></td>
<td style="text-align: left;">Updates a prepared statement</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../athena_update_work_group/"> update_work_group </a></td>
<td style="text-align: left;">Updates the workgroup with the specified
name</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- athena()
    svc$batch_get_named_query(
      Foo = 123
    )

    ## End(Not run)
