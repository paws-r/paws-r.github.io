<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftdataapiservice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Redshift Data API Service

### Description

You can use the Amazon Redshift Data API to run queries on Amazon
Redshift tables. You can run SQL statements, which are committed if the
statement succeeds.

For more information about the Amazon Redshift Data API and CLI usage
examples, see [Using the Amazon Redshift Data
API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in
the *Amazon Redshift Management Guide*.

### Usage

    redshiftdataapiservice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="redshiftdataapiservice_:_config">config</code></td>
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

    svc <- redshiftdataapiservice(
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
<td style="text-align: left;"><a href="../redshiftdataapiservice_batch_execute_statement/"> batch_execute_statement </a></td>
<td style="text-align: left;">Runs one or more SQL statements, which can
be data manipulation language (DML) or data definition language
(DDL)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftdataapiservice_cancel_statement/"> cancel_statement </a></td>
<td style="text-align: left;">Cancels a running query</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftdataapiservice_describe_statement/"> describe_statement </a></td>
<td style="text-align: left;">Describes the details about a specific
instance when a query was run by the Amazon Redshift Data API</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftdataapiservice_describe_table/"> describe_table </a></td>
<td style="text-align: left;">Describes the detailed information about a
table from metadata in the cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftdataapiservice_execute_statement/"> execute_statement </a></td>
<td style="text-align: left;">Runs an SQL statement, which can be data
manipulation language (DML) or data definition language (DDL)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftdataapiservice_get_statement_result/"> get_statement_result </a></td>
<td style="text-align: left;">Fetches the temporarily cached result of
an SQL statement</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftdataapiservice_list_databases/"> list_databases </a></td>
<td style="text-align: left;">List the databases in a cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftdataapiservice_list_schemas/"> list_schemas </a></td>
<td style="text-align: left;">Lists the schemas in a database</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshiftdataapiservice_list_statements/"> list_statements </a></td>
<td style="text-align: left;">List of SQL statements</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshiftdataapiservice_list_tables/"> list_tables </a></td>
<td style="text-align: left;">List the tables in a database</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- redshiftdataapiservice()
    svc$batch_execute_statement(
      Foo = 123
    )

    ## End(Not run)
