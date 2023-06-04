<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rdsdataservice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS RDS DataService

### Description

Amazon RDS Data Service

Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon
Aurora Serverless v1 DB cluster. To run these statements, you work with
the Data Service API.

The Data Service API isn't supported on Amazon Aurora Serverless v2 DB
clusters.

For more information about the Data Service API, see [Using the Data
API](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html)
in the *Amazon Aurora User Guide*.

### Usage

    rdsdataservice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rdsdataservice_:_config">config</code></td>
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

    svc <- rdsdataservice(
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
<td style="text-align: left;"><a href="../rdsdataservice_batch_execute_statement/"> batch_execute_statement </a></td>
<td style="text-align: left;">Runs a batch SQL statement over an array
of data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rdsdataservice_begin_transaction/"> begin_transaction </a></td>
<td style="text-align: left;">Starts a SQL transaction</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rdsdataservice_commit_transaction/"> commit_transaction </a></td>
<td style="text-align: left;">Ends a SQL transaction started with the
BeginTransaction operation and commits the changes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rdsdataservice_execute_sql/"> execute_sql </a></td>
<td style="text-align: left;">Runs one or more SQL statements</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rdsdataservice_execute_statement/"> execute_statement </a></td>
<td style="text-align: left;">Runs a SQL statement against a
database</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rdsdataservice_rollback_transaction/"> rollback_transaction </a></td>
<td style="text-align: left;">Performs a rollback of a transaction</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- rdsdataservice()
    svc$batch_execute_statement(
      Foo = 123
    )

    ## End(Not run)
